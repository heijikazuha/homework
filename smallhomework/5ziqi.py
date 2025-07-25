from tkinter import Tk, Canvas, Button, messagebox

class GomokuGame:
    def __init__(self, root):
        self.root = root
        self.root.title("五子棋")

        # 游戏配置
        self.board_size = 15
        self.cell_size = 30
        self.piece_radius = 10
        self.cell_padding = 15  # 边缘留白

        # 游戏状态
        self.current_player = "black"
        self.game_active = False

        # 数据记录
        self.board = [[None for _ in range(self.board_size)] for _ in range(self.board_size)]
        self.record = []  # 记录落子顺序和位置
        self.rec = set()  # 记录已落子位置，防止重复

        # 创建画布
        canvas_width = self.board_size * self.cell_size + 2 * self.cell_padding
        canvas_height = self.board_size * self.cell_size + 2 * self.cell_padding

        self.canvas = Canvas(
            root,
            width=canvas_width,
            height=canvas_height,
            bg="lightgray"
        )
        self.canvas.pack()

        # 绘制棋盘
        self.draw_board()

        # 绑定鼠标事件
        self.canvas.bind("<Button-1>", self.callback1)  # 左键绑定
        self.canvas.bind("<Button-3>", self.callback2)  # 右键绑定

        # 按钮
        self.start_btn = Button(root, text="Start", command=self.start_game)
        self.start_btn.pack(side="left", padx=10, pady=10)

        self.quit_btn = Button(root, text="Quit", command=root.destroy)
        self.quit_btn.pack(side="right", padx=10, pady=10)

    def draw_board(self):
        """绘制棋盘网格和标记点"""
        self.canvas.delete("all")

        # 绘制网格线
        for i in range(self.board_size):
            # 计算网格线位置（从留白边缘开始）
            x = self.cell_padding + i * self.cell_size
            y = self.cell_padding + i * self.cell_size

            # 绘制横线（边缘线加粗）
            self.canvas.create_line(
                self.cell_padding, y,
                self.cell_padding + (self.board_size - 1) * self.cell_size, y,
                width=2 if i == 0 or i == self.board_size - 1 else 1,
                fill="black"
            )

            # 绘制竖线（边缘线加粗）
            self.canvas.create_line(
                x, self.cell_padding,
                x, self.cell_padding + (self.board_size - 1) * self.cell_size,
                width=2 if i == 0 or i == self.board_size - 1 else 1,
                fill="black"
            )

        # 绘制天元和星位
        star_points = [(3, 3), (3, 11), (7, 7), (11, 3), (11, 11)]
        for x, y in star_points:
            px = self.cell_padding + x * self.cell_size
            py = self.cell_padding + y * self.cell_size
            self.canvas.create_oval(px - 3, py - 3, px + 3, py + 3, fill="black")

    def start_game(self):
        """开始/重置游戏"""
        self.canvas.delete("piece")
        self.board = [[None for _ in range(self.board_size)] for _ in range(self.board_size)]
        self.record = []
        self.rec = set()
        self.current_player = "black"
        self.game_active = True
        messagebox.showinfo("提示", "游戏开始！黑方先行")

    def get_board_position(self, event):
        """将鼠标坐标转换为棋盘坐标（精确计算最近交叉点）"""
        # 计算相对棋盘左上角的坐标
        rel_x = event.x - self.cell_padding
        rel_y = event.y - self.cell_padding

        # 计算最近的交叉点
        grid_x = round(rel_x / self.cell_size)
        grid_y = round(rel_y / self.cell_size)

        # 边界检查（允许在边缘交叉点落子）
        if 0 <= grid_x < self.board_size and 0 <= grid_y < self.board_size:
            return grid_x, grid_y
        return None, None

    def callback1(self, event):
        """左键回调函数 - 放置黑子"""
        if not self.game_active:
            return

        # 获取棋盘位置
        x, y = self.get_board_position(event)
        if x is None:
            return  # 超出棋盘范围

        # 检查是否已落子
        position_id = y * self.board_size + x
        if position_id in self.rec:
            messagebox.showwarning("提示", "该位置已有棋子！")
            return

        # 检查当前玩家
        if self.current_player != "black":
            messagebox.showwarning("提示", "当前轮到白方下棋！")
            return

        # 记录并放置黑子
        self.record.append((position_id, "black"))
        self.rec.add(position_id)
        self.board[y][x] = "black"
        self.draw_piece(x, y, "black")

        # 检查胜负
        if self.check_win(x, y, "black"):
            messagebox.showinfo("游戏结束", "黑方获胜！")
            self.game_active = False
            return

        # 切换玩家
        self.current_player = "white"

    def callback2(self, event):
        """右键回调函数 - 放置白子"""
        if not self.game_active:
            return

        # 获取棋盘位置
        x, y = self.get_board_position(event)
        if x is None:
            return  # 超出棋盘范围

        # 检查是否已落子
        position_id = y * self.board_size + x
        if position_id in self.rec:
            messagebox.showwarning("提示", "该位置已有棋子！")
            return

        # 检查当前玩家
        if self.current_player != "white":
            messagebox.showwarning("提示", "当前轮到黑方下棋！")
            return

        # 记录并放置白子
        self.record.append((position_id, "white"))
        self.rec.add(position_id)
        self.board[y][x] = "white"
        self.draw_piece(x, y, "white")

        # 检查胜负
        if self.check_win(x, y, "white"):
            messagebox.showinfo("游戏结束", "白方获胜！")
            self.game_active = False
            return

        # 切换玩家
        self.current_player = "black"

    def draw_piece(self, x, y, color):
        """绘制棋子（考虑边缘留白）"""
        canvas_x = self.cell_padding + x * self.cell_size
        canvas_y = self.cell_padding + y * self.cell_size

        self.canvas.create_oval(
            canvas_x - self.piece_radius, canvas_y - self.piece_radius,
            canvas_x + self.piece_radius, canvas_y + self.piece_radius,
            fill=color,
            tags="piece"
        )

    def check_win(self, x, y, color):
        """检查是否有五子连珠"""
        directions = [(0, 1), (1, 0), (1, 1), (1, -1)]

        for dx, dy in directions:
            count = 1

            # 正方向检查
            for i in range(1, 5):
                nx = x + dx * i
                ny = y + dy * i
                if 0 <= nx < self.board_size and 0 <= ny < self.board_size:
                    if self.board[ny][nx] == color:
                        count += 1
                    else:
                        break
                else:
                    break

            # 反方向检查
            for i in range(1, 5):
                nx = x - dx * i
                ny = y - dy * i
                if 0 <= nx < self.board_size and 0 <= ny < self.board_size:
                    if self.board[ny][nx] == color:
                        count += 1
                    else:
                        break
                else:
                    break

            if count >= 5:
                return True

        return False

if __name__ == "__main__":
    root = Tk()
    game = GomokuGame(root)
    root.mainloop()