USE [FALL2023_Assignment]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stuid] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[att_datetime] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[sup_iis] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Student]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Student](
	[stuid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Group_Student] PRIMARY KEY CLUSTERED 
(
	[stuid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[iid] [int] NOT NULL,
	[iname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomid] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] IDENTITY(1,1) NOT NULL,
	[gid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[rid] [varchar](150) NOT NULL,
	[iid] [int] NOT NULL,
	[isAtt] [bit] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stuid] [int] NOT NULL,
	[stuname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/23/2023 4:54:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (1, 1, 1, N'nothing', CAST(N'2023-10-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (1, 2, 0, N'nothing', CAST(N'2023-10-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (1, 3, 0, N'nothing', CAST(N'2023-10-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (2, 1, 1, N'A', CAST(N'2023-10-23T09:37:09.830' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (2, 2, 0, N'B', CAST(N'2023-10-23T09:37:09.830' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (2, 3, 1, N'C', CAST(N'2023-10-23T09:37:09.830' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (3, 1, 1, N'XX', CAST(N'2023-10-23T16:53:19.723' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (3, 2, 0, N'XX', CAST(N'2023-10-23T16:53:19.727' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stuid], [status], [description], [att_datetime]) VALUES (3, 3, 0, N'XXX', CAST(N'2023-10-23T16:53:19.727' AS DateTime))
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [sup_iis]) VALUES (1, N'SE001', 1, 1)
INSERT [dbo].[Group] ([gid], [gname], [subid], [sup_iis]) VALUES (2, N'SE002', 2, 2)
GO
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (1, 1)
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (1, 2)
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (2, 1)
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (3, 1)
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (4, 2)
INSERT [dbo].[Group_Student] ([stuid], [gid]) VALUES (5, 2)
GO
INSERT [dbo].[Instructor] ([iid], [iname]) VALUES (1, N'sonnt')
INSERT [dbo].[Instructor] ([iid], [iname]) VALUES (2, N'chilp')
GO
INSERT [dbo].[Room] ([roomid]) VALUES (N'D101')
INSERT [dbo].[Room] ([roomid]) VALUES (N'D102')
INSERT [dbo].[Room] ([roomid]) VALUES (N'D103')
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([sesid], [gid], [index], [date], [tid], [rid], [iid], [isAtt]) VALUES (1, 1, 1, CAST(N'2023-10-18' AS Date), 1, N'D101', 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [index], [date], [tid], [rid], [iid], [isAtt]) VALUES (2, 1, 2, CAST(N'2023-10-19' AS Date), 1, N'D101', 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [index], [date], [tid], [rid], [iid], [isAtt]) VALUES (3, 1, 3, CAST(N'2023-10-20' AS Date), 1, N'D101', 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [index], [date], [tid], [rid], [iid], [isAtt]) VALUES (4, 2, 1, CAST(N'2023-10-18' AS Date), 2, N'D101', 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [index], [date], [tid], [rid], [iid], [isAtt]) VALUES (5, 2, 2, CAST(N'2023-10-19' AS Date), 2, N'D101', 2, 0)
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
INSERT [dbo].[Student] ([stuid], [stuname]) VALUES (1, N'Mr A')
INSERT [dbo].[Student] ([stuid], [stuname]) VALUES (2, N'Mr B')
INSERT [dbo].[Student] ([stuid], [stuname]) VALUES (3, N'Mr C')
INSERT [dbo].[Student] ([stuid], [stuname]) VALUES (4, N'Mr D')
INSERT [dbo].[Student] ([stuid], [stuname]) VALUES (5, N'Mr E')
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'CSD201')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7h30 - 9h50')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'10h - 12h20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'12h50 - 15h10')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'15h20 - 17h40')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([stuid])
REFERENCES [dbo].[Student] ([stuid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Instructor] FOREIGN KEY([sup_iis])
REFERENCES [dbo].[Instructor] ([iid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Instructor]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Group]
GO
ALTER TABLE [dbo].[Group_Student]  WITH CHECK ADD  CONSTRAINT [FK_Group_Student_Student] FOREIGN KEY([stuid])
REFERENCES [dbo].[Student] ([stuid])
GO
ALTER TABLE [dbo].[Group_Student] CHECK CONSTRAINT [FK_Group_Student_Student]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Instructor] FOREIGN KEY([iid])
REFERENCES [dbo].[Instructor] ([iid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Instructor]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([roomid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
