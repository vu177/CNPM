USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 6/2/2020 10:53:02 AM ******/
CREATE DATABASE [CHUNGKHOAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHUNGKHOAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CHUNGKHOAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CHUNGKHOAN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CHUNGKHOAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CHUNGKHOAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CHUNGKHOAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECOVERY FULL 
GO
ALTER DATABASE [CHUNGKHOAN] SET  MULTI_USER 
GO
ALTER DATABASE [CHUNGKHOAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CHUNGKHOAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CHUNGKHOAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CHUNGKHOAN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CHUNGKHOAN', N'ON'
GO
USE [CHUNGKHOAN]
GO
/****** Object:  UserDefinedFunction [dbo].[CheckMACP]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CheckMACP]( @MA CHAR(7) )
RETURNS INT

AS

BEGIN

DECLARE @KQ INT;
	IF EXISTS( SELECT 1 FROM BANGGIATRUCTUYEN bg Where bg.MACP=@MA)
	BEGIN
		SET @KQ=1;
	END
	ELSE
	BEGIN
		SET @KQ=0;
	END

RETURN @KQ;

END;
GO
/****** Object:  Table [dbo].[BANGGIATRUCTUYEN]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANGGIATRUCTUYEN](
	[MACP] [char](7) NULL,
	[GIAMUA2] [float] NULL,
	[KLMUA2] [int] NULL,
	[GIAMUA1] [float] NULL,
	[KLMUA1] [int] NULL,
	[GIAKHOP] [float] NULL,
	[KLKHOP] [int] NULL,
	[GIABAN1] [float] NULL,
	[KLBAN1] [int] NULL,
	[GIABAN2] [float] NULL,
	[KLBAN2] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LENHDAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MACP] [char](7) NULL,
	[NGAYDAT] [datetime] NULL,
	[LOAIGD] [nchar](1) NULL,
	[LOAILENH] [nchar](10) NULL,
	[SOLUONG] [int] NULL,
	[GIADAT] [float] NULL,
	[TRANGTHAILENH] [nvarchar](30) NULL,
 CONSTRAINT [PK_LENHDAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHKHOP](
	[IDKHOP] [int] IDENTITY(1,1) NOT NULL,
	[NGAYKHOP] [datetime] NULL,
	[SOLUONGKHOP] [int] NULL,
	[GIAKHOP] [float] NULL,
	[IDLENHDAT] [int] NOT NULL,
 CONSTRAINT [PK_LENHKHOP] PRIMARY KEY CLUSTERED 
(
	[IDKHOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_ALL_MACP]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ALL_MACP]
AS
SELECT DISTINCT MACP
FROM            dbo.LENHDAT


GO
/****** Object:  View [dbo].[V_MACP]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MACP]
AS
SELECT MACP
FROM     dbo.BANGGIATRUCTUYEN

GO
INSERT [dbo].[BANGGIATRUCTUYEN] ([MACP], [GIAMUA2], [KLMUA2], [GIAMUA1], [KLMUA1], [GIAKHOP], [KLKHOP], [GIABAN1], [KLBAN1], [GIABAN2], [KLBAN2]) VALUES (N'ABC    ', 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0)
INSERT [dbo].[BANGGIATRUCTUYEN] ([MACP], [GIAMUA2], [KLMUA2], [GIAMUA1], [KLMUA1], [GIAKHOP], [KLKHOP], [GIABAN1], [KLBAN1], [GIABAN2], [KLBAN2]) VALUES (N'AAA    ', 0, 0, 10, 10, NULL, NULL, 0, 0, 0, 0)
INSERT [dbo].[BANGGIATRUCTUYEN] ([MACP], [GIAMUA2], [KLMUA2], [GIAMUA1], [KLMUA1], [GIAKHOP], [KLKHOP], [GIABAN1], [KLBAN1], [GIABAN2], [KLBAN2]) VALUES (N'BBB    ', 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[LENHDAT] ON 

INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (1, N'AAA    ', CAST(N'2020-06-02 10:52:00.000' AS DateTime), N'M', N'LO        ', 10, 10, N'Chờ khớp')
SET IDENTITY_INSERT [dbo].[LENHDAT] OFF
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CursorLoaiGD]
	@OutCrsr CURSOR VARYING	OUTPUT,	--VARYING: chỉ định kết quả trả về là 1 cursor
	@macp NVARCHAR(10), @Ngay DATETIME, @LoaiGD CHAR(1)	--các dữ liệu input
AS
	SET DATEFORMAT DMY	--set kiểu cho kdl date là ngày tháng năm
	IF (@LoaiGD = 'M')
		SET @OutCrsr = CURSOR KEYSET FOR	--KEYSET: loại cho phép tự động cập nhật và hiển thị tất cả những thay dổi từ bảng nguồn
		SELECT ID, NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
		WHERE MACP = @macp
			AND CAST(NGAYDAT AS DATE) = CAST(@Ngay AS DATE) --CAST: chuyển đổi kdl sang kdl date/ chỉ lấy mẫu tin có ngày trùng với ngày input
			AND LOAIGD = @LoaiGD AND SOLUONG > 0
			ORDER BY GIADAT DESC, NGAYDAT --Sắp xếp giá đặt từ cao xuống, Time tu nhanh den cham
	ELSE 
		SET @OutCrsr = CURSOR KEYSET FOR 
		SELECT ID, NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
		WHERE MACP = @macp
			AND CAST(NGAYDAT AS DATE) = CAST(@Ngay AS DATE)
			AND LOAIGD = @LoaiGD AND SOLUONG > 0
			ORDER BY GIADAT, NGAYDAT
	OPEN @OutCrsr --mở cursor






GO
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KHOPLENH_LO]
	@macp NVARCHAR(10), @Ngay DATETIME, @LoaiGD CHAR(1),
	@soluongMB INT, @giadatMB FLOAT 
AS	
	Declare @KQ INT
	SET @KQ =(SELECT  [dbo].[CheckMACP](@MACP))     --KIỂM TRA MÃ CP NHẬP VÀO CÓ TRONG BGTT k?

	IF(@KQ=1)
	BEGIN
		SET DATEFORMAT DMY
		DECLARE @CrsrVar CURSOR, @ngaydat DATETIME, @soluong INT,  --biến CrsrVar quản lý tập các mẫu tin trả về từ SP CursorLoaiGD
		@giadat	FLOAT, @soluongkhop INT, @giakhop FLOAT, @ID INT, @sumsoluongkhop INT, @khoped BIT

		SET @sumsoluongkhop = 0
		SET @khoped = 0

		IF(@LoaiGD = 'B')--Nếu bán thì nó sẽ chạy sp và xem thằng mua nào đặt trước với giá cao nhất 
			EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'M'  --nhận dữ liệu trả về từ CusorLoaiGD
		ELSE --còn mua thì ngược lại
			EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'B'
		FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat		--chuyển sang mẫu tin kế tiếp từ CrsrVar/ các biến cục bộ nhận dữ liệu tương ứng từ tập tin hiện tại

		--select @ID, @ngaydat, @soluong, @giadat cua bang lenhdat tao thanh 1 bang roi dua con tro vao bang do
		WHILE(@@FETCH_STATUS <>-1 AND @soluongMB > 0)  -- -1: thất bại hoặc dòng vượt quá kết quả gán
		BEGIN
			IF(@LoaiGD = 'B')--nếu gia dịch là bán
				BEGIN
					IF(@giadatMB <= @giadat)
						BEGIN
							IF(@soluongMB >= @soluong)
								BEGIN
									SET @soluongkhop = @soluong
									SET @giakhop = @giadat
									SET @soluongMB = @soluongMB - @soluong
									UPDATE dbo.LENHDAT 
										SET SOLUONG = 0,TRANGTHAILENH = N'Khớp hết'
										WHERE CURRENT OF @CrsrVar			--upate mẫu tin hiện tại: với loại giao dịch là mua
									SET @khoped = 1							--để sau này insert vào bảng lệnh đặt nè
								END
							ELSE
								BEGIN
									SET @soluongkhop = @soluongMB
									SET @giakhop = @giadat
									UPDATE dbo.LENHDAT
										SET SOLUONG = SOLUONG - @soluongMB,TRANGTHAILENH = N'Khớp lệnh 1 phần'
										WHERE CURRENT OF @CrsrVar
										SET @soluongMB = 0
									SET @khoped = 1
								END
							--SELECT @soluongkhop, @giakhop
							SET @sumsoluongkhop = @sumsoluongkhop + @soluongkhop
							--Update table LENHKHOP
							INSERT INTO LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP, IDLENHDAT)
									VALUES (GETDATE(),@soluongkhop, @giakhop, @ID)
				
						END
					ELSE
						GOTO THOAT
					END
			
			-- Còn Trường hợp lệnh gởi vào là lệnh MUA
			ELSE
				BEGIN
					IF(@giadatMB >= @giadat)
						BEGIN
							IF(@soluongMB >= @soluong)
								BEGIN
									SET @soluongkhop = @soluong
									SET @giakhop = @giadat
									SET @soluongMB = @soluongMB - @soluong
									UPDATE dbo.LENHDAT 
										SET SOLUONG = 0,TRANGTHAILENH = N'Khớp hết'
										WHERE CURRENT OF @CrsrVar
									SET @khoped = 1
								END
							ELSE
								BEGIN
									SET @soluongkhop = @soluongMB
									SET @giakhop = @giadat
									UPDATE dbo.LENHDAT
										SET SOLUONG = SOLUONG - @soluongMB,TRANGTHAILENH = N'Khớp lệnh 1 phần'
										WHERE CURRENT OF @CrsrVar
										SET @soluongMB = 0
									SET @khoped = 1
								END
							--SELECT @soluongkhop, @giakhop
							SET @sumsoluongkhop = @sumsoluongkhop + @soluongkhop
							--Update table LENHKHOP
							INSERT INTO LENHKHOP(NGAYKHOP, SOLUONGKHOP, GIAKHOP, IDLENHDAT)
									VALUES (GETDATE(),@soluongkhop, @giakhop, @ID)
				
						END
					ELSE
						GOTO THOAT
					END
			
			FETCH NEXT FROM @CrsrVar INTO @ID, @ngaydat, @soluong, @giadat
		END
	
		THOAT:
		--Cập nhật table LENHDAT nếu số lượng mua bán > 0
		IF(@soluongMB>0)
		BEGIN
			IF(@khoped = 1)
				BEGIN
					INSERT INTO LENHDAT(MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
					VALUES(@macp, @Ngay, @LoaiGD, 'LO', @soluongMB, @giadatMB, N'Khớp lệnh 1 phần')
				END
			ELSE
				BEGIN
					INSERT INTO LENHDAT(MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
					VALUES(@macp, @Ngay, @LoaiGD, 'LO', @soluongMB, @giadatMB, N'Chờ khớp')
				END
		END
		ELSE
		BEGIN
			INSERT INTO LENHDAT(MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
					VALUES(@macp, @Ngay, @LoaiGD, 'LO', @soluongMB, @giadatMB, N'Khớp hết')
		END
			CLOSE @CrsrVar 
			DEALLOCATE @CrsrVar
		END
		



GO
/****** Object:  StoredProcedure [dbo].[SP_RESET_BANGGIA]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_RESET_BANGGIA]
AS
	BEGIN
	DECLARE @MACP CHAR(7)

	DECLARE CurVar CURSOR FOR (SELECT DISTINCT MACP FROM dbo.BANGGIATRUCTUYEN) --LẤY TẤT CẢ MÃ CỔ PHIẾU CÓ TRONG BGTT

	OPEN CurVar

	FETCH NEXT FROM CurVar INTO @MACP
	WHILE (@@FETCH_STATUS <> -1)
		BEGIN

			DECLARE @GIAKHOP FLOAT, @KLKHOP INT, @GIAMUA1 FLOAT, @KLMUA1 INT,@GIAMUA2 FLOAT, @KLMUA2 INT,@GIABAN1 FLOAT, @KLBAN1 INT,@GIABAN2 FLOAT, @KLBAN2 INT
			
			--GIÁ KHỚP
			SET @GIAKHOP = (SELECT TOP(1) LK.GIAKHOP
						FROM dbo.LENHKHOP LK INNER JOIN dbo.LENHDAT LD ON LK.IDLENHDAT = LD.ID
						WHERE LD.MACP = @MACP AND CAST(LK.NGAYKHOP AS DATE) = CAST(GETDATE() AS	DATE)
						ORDER BY LK.IDKHOP DESC)

			SET @KLKHOP = (SELECT TOP(1) LK.SOLUONGKHOP
						FROM dbo.LENHKHOP LK INNER JOIN dbo.LENHDAT LD ON LK.IDLENHDAT = LD.ID
						WHERE LD.MACP = @MACP AND CAST(LK.NGAYKHOP AS DATE) = CAST(GETDATE() AS	DATE)
						ORDER BY LK.IDKHOP DESC)

			--GIÁ TỐT NHẤT CỦA MUA
			SET @GIAMUA1 =(SELECT TOP(1) LD.GIADAT
						FROM dbo.LENHDAT LD 
						WHERE LD.MACP = @MACP AND LD.LOAIGD='M' and CAST(LD.NGAYDAT AS DATE) = CAST(GETDATE() AS	DATE)
						ORDER BY LD.GIADAT DESC)

			IF(@GIAMUA1 IS NULL)
			BEGIN
				SET @GIAMUA1 =0
				SET @KLMUA1=0
			END
			ELSE
			BEGIN
				SET @KLMUA1 = (select sum(SOLUONG) 
							from LENHDAT L 
							WHERE L.GIADAT= @GIAMUA1
							AND L.MACP= @MACP AND L.LOAIGD='M')
			END


			--GIÁ TỐT THỨ 2 CỦA MUA
			SET @GIAMUA2 = (SELECT MIN(a.GIADAT)
							FROM (
								SELECT TOP 2 LD.GIADAT
								FROM dbo.LENHDAT LD 
								WHERE LD.MACP = @MACP AND LD.LOAIGD='M'and CAST(LD.NGAYDAT AS DATE) = CAST(GETDATE() AS	DATE)
								GROUP BY  LD.GIADAT
								ORDER BY  LD.GIADAT DESC
							) a)
			IF(@GIAMUA2 IS NULL)
			BEGIN
				SET @GIAMUA2 =0
				SET @KLMUA2=0
			END
			ELSE
			BEGIN
				--so sánh 2 mua bán khác nhau
					IF(@GIAMUA2=@GIAMUA1)
					BEGIN
						SET @GIAMUA2 =0
						SET @KLMUA2=0
					END
					ELSE
					BEGIN
						SET @KLMUA2 =	(select sum(SOLUONG) 
									from LENHDAT L 
									WHERE L.GIADAT= @GIAMUA2 
										AND L.MACP= @MACP AND L.LOAIGD='M')
					END
			END


			----- GIÁ TỐT NHẤT CỦA BÁN
			SET @GIABAN1 =(SELECT TOP(1) LD.GIADAT
							FROM dbo.LENHDAT LD 
							WHERE LD.MACP = @MACP AND LD.LOAIGD='B'and CAST(LD.NGAYDAT AS DATE) = CAST(GETDATE() AS	DATE)
							ORDER BY LD.GIADAT ASC)
			

			IF(@GIABAN1 IS NULL)
			BEGIN
				SET @GIABAN1 =0
				SET @KLBAN1=0
			END
			ELSE
			BEGIN
				SET @KLBAN1 =(select sum(SOLUONG) 
							from LENHDAT L 
							WHERE L.GIADAT= @GIABAN1
							AND L.MACP= @MACP AND L.LOAIGD='B')
			END


			---GIÁ TỐT THỨ 2 CỦA BÁN
			SET @GIABAN2 =	(SELECT MAX(a.GIADAT)
							FROM (
								SELECT TOP 2 LD.GIADAT
								FROM dbo.LENHDAT LD 
								WHERE LD.MACP = @MACP AND LD.LOAIGD='B'and CAST(LD.NGAYDAT AS DATE) = CAST(GETDATE() AS	DATE)
								GROUP BY  LD.GIADAT
								ORDER BY  LD.GIADAT ASC
							) a)

			IF(@GIABAN2 IS NULL)
			BEGIN
				SET @GIABAN2=0;
				SET @KLBAN2=0;
			END
			ELSE
			BEGIN
				--so sánh 2 giá bán khác nhau
					IF(@GIABAN2=@GIABAN1)
					BEGIN
						SET @GIABAN2=0;
						SET @KLBAN2=0;
					END
					ELSE
					BEGIN
						SET @KLBAN2 =	(select sum(SOLUONG) 
									from LENHDAT L 
									WHERE L.GIADAT= @GIABAN2 
										AND L.MACP= @MACP AND L.LOAIGD='B')
					END
			END
		

			--update lại dữ liệu
			UPDATE dbo.BANGGIATRUCTUYEN 
			SET GIAKHOP = @GIAKHOP, KLKHOP = @KLKHOP, GIABAN1 = @GIABAN1, KLBAN1= @KLBAN1, GIABAN2= @GIABAN2, KLBAN2= @KLBAN2,
				GIAMUA1 = @GIAMUA1, KLMUA1 = @KLMUA1, GIAMUA2= @GIAMUA2, KLMUA2= @KLMUA2
			WHERE MACP = @MACP

			FETCH NEXT FROM CurVar INTO @MACP
		END
	CLOSE CurVar
	DEALLOCATE CurVar
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE_BANGGIA]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[SP_UPDATE_BANGGIA]
	@MACP CHAR(7),@LOAIGD NCHAR(1),@SOLUONG INT, @GIADAT FLOAT, @LOAI NCHAR(1)
AS
BEGIN
	DECLARE  @GM2 FLOAT, @GM1 FLOAT, @GB2 FLOAT,@GB1 FLOAT,@KLM1 INT, @KLM2 INT,@KLB1 INT, @KLB2 INT
	--THEM
	IF(@LOAI='T')
	BEGIN
		--trường hợp mẫ cổ phiếu đã có
		if exists (select 1 from (SELECT MACP FROM dbo.BANGGIATRUCTUYEN) temp where temp.MACP=@MACP) 
			BEGIN
		---LOẠI GIAO DỊCH LÀ MUA thì update lại giá mua
			IF(@LOAIGD='M')
			BEGIN
				SET @GM1= (SELECT GIAMUA1 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				SET @GM2= (SELECT GIAMUA2 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				
				IF(@GIADAT>@GM1)
				BEGIN
					--UPDATE LẠI  bảng giá trực tuyến
						UPDATE dbo.BANGGIATRUCTUYEN 
						SET  GIAMUA2= GIAMUA1, KLMUA2= KLMUA1, GIAMUA1= @GIADAT, KLMUA1= @SOLUONG
						WHERE MACP = @MACP
				END
				ELSE
				BEGIN
					IF(@GIADAT=@GM1)
					BEGIN
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET  KLMUA1= KLMUA1 +@SOLUONG
							WHERE MACP = @MACP
					END
					ELSE 
					BEGIN
						IF(@GIADAT> @GM2)
						BEGIN
								UPDATE dbo.BANGGIATRUCTUYEN 
								SET  GIAMUA2= @GIADAT, KLMUA2= @SOLUONG
								WHERE MACP = @MACP
						END
						ELSE IF(@GIADAT= @GM2)
						BEGIN
								UPDATE dbo.BANGGIATRUCTUYEN 
								SET  KLMUA2= KLMUA2 +@SOLUONG
								WHERE MACP = @MACP
						END
					END
				END
				
			END

				---LOẠI GIAO DỊCH LÀ BÁN
			ELSE
			BEGIN
				SET @GB2= (SELECT GIABAN2 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				SET @GB1= (SELECT GIABAN1 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				
				IF(@GB1=0)
				BEGIN
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET  GIABAN1= @GIADAT, KLBAN1= @SOLUONG
							WHERE MACP = @MACP
				END
				ELSE
				BEGIN
					IF(@GIADAT<@GB1)
					BEGIN
						--UPDATE LẠI  bảng giá trực tuyến
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET  GIABAN2= GIABAN1, KLBAN2= KLBAN1, GIABAN1= @GIADAT, KLBAN1= @SOLUONG
							WHERE MACP = @MACP
					END
					ELSE
					BEGIN
						IF(@GIADAT=@GB1)
						BEGIN
								UPDATE dbo.BANGGIATRUCTUYEN 
								SET  KLBAN1= KLBAN1 +@SOLUONG
								WHERE MACP = @MACP
						END
						ELSE 
						BEGIN
								IF(@GB2=0)
								BEGIN
										UPDATE dbo.BANGGIATRUCTUYEN 
										SET  GIABAN2= @GIADAT, KLBAN2= @SOLUONG
										WHERE MACP = @MACP
								END
								ELSE
								BEGIN
									IF(@GIADAT< @GB2)
									BEGIN
											UPDATE dbo.BANGGIATRUCTUYEN 
											SET  GIABAN2= @GIADAT, KLBAN2= @SOLUONG
											WHERE MACP = @MACP
									END
									ELSE IF(@GIADAT= @GB2)
									BEGIN
											UPDATE dbo.BANGGIATRUCTUYEN 
											SET  KLBAN2= KLBAN2 +@SOLUONG
											WHERE MACP = @MACP
									END
								END
						END
					END
				END
			END
		END
	END
	--TRƯỜNG HỢP XÓA
ELSE IF(@LOAI='X')
	BEGIN
	---LOẠI GIAO DỊCH LÀ MUA thì update lại giá mua
			IF(@LOAIGD='M')
			BEGIN
				SET @GM1= (SELECT GIAMUA1 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				SET @GM2= (SELECT GIAMUA2 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				
				IF(@GIADAT=@GM1)
				BEGIN
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET  KLMUA1= KLMUA1 -@SOLUONG
							WHERE MACP = @MACP
				END
				ELSE IF(@GIADAT= @GM2)
				BEGIN
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET  KLMUA2= KLMUA2 -@SOLUONG
							WHERE MACP = @MACP
				END
				
			END
				---LOẠI GIAO DỊCH LÀ BÁN
			ELSE
			BEGIN
				SET @GB2= (SELECT GIABAN2 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				SET @GB1= (SELECT GIABAN1 FROM BANGGIATRUCTUYEN BG WHERE BG.MACP= @MACP)
				
				IF(@GIADAT=@GB1)
				BEGIN
							UPDATE dbo.BANGGIATRUCTUYEN 
							SET KLBAN1= KLBAN1-@SOLUONG
							WHERE MACP = @MACP
				END
				ELSE IF(@GIADAT=@GB2)
				BEGIN
					UPDATE dbo.BANGGIATRUCTUYEN 
							SET KLBAN2= KLBAN2- @SOLUONG
							WHERE MACP = @MACP
				END
		END
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-62081429-c6ed-459a-b38e-4bb777ebe7b8]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-62081429-c6ed-459a-b38e-4bb777ebe7b8] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8') > 0)   DROP SERVICE [SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8]; if (OBJECT_ID('SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-62081429-c6ed-459a-b38e-4bb777ebe7b8]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-62081429-c6ed-459a-b38e-4bb777ebe7b8]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-a8234e84-0b66-41a6-9945-6bea852cb3b3]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-a8234e84-0b66-41a6-9945-6bea852cb3b3] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3') > 0)   DROP SERVICE [SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3]; if (OBJECT_ID('SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-a8234e84-0b66-41a6-9945-6bea852cb3b3]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-a8234e84-0b66-41a6-9945-6bea852cb3b3]; END COMMIT TRANSACTION; END
GO
/****** Object:  Trigger [dbo].[TR_AfterDelete_LD]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER  [dbo].[TR_AfterDelete_LD] 
   ON  [dbo].[LENHDAT] 
   AFTER DELETE 
AS 
BEGIN
	DECLARE @MACP CHAR(7),@LOAIGD NCHAR(1),@SOLUONG INT, @GIADAT FLOAT, @LOAI NCHAR(1)
	SET @MACP= (SELECT MACP FROM deleted)
	SET @LOAIGD= (SELECT LOAIGD FROM deleted)
	SET @SOLUONG= (SELECT SOLUONG FROM deleted)
	SET @GIADAT= (SELECT GIADAT FROM deleted)
	SET @LOAI= 'X'
    
	EXEC SP_UPDATE_BANGGIA @MACP,@LOAIGD,@SOLUONG,@GIADAT,@LOAI

END
GO
/****** Object:  Trigger [dbo].[TR_AfterInsert_LD]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER  [dbo].[TR_AfterInsert_LD] 
   ON  [dbo].[LENHDAT] 
   AFTER INSERT 
AS 
BEGIN
	DECLARE @ID INT,@MACP CHAR(7),@LOAIGD NCHAR(1),@SOLUONG INT, @GIADAT FLOAT, @LOAI NCHAR(1),@KQ INT
	SET @ID =(SELECT ID FROM inserted)
	SET @MACP= (SELECT MACP FROM inserted)
	SET @LOAIGD= (SELECT LOAIGD FROM inserted)
	SET @SOLUONG= (SELECT SOLUONG FROM inserted)
	SET @GIADAT= (SELECT GIADAT FROM inserted)
	SET @LOAI= 'T'
    SET @KQ =(SELECT  [dbo].[CheckMACP](@MACP))

	IF(@KQ=1)
	BEGIN
		EXEC SP_UPDATE_BANGGIA @MACP,@LOAIGD,@SOLUONG,@GIADAT,@LOAI
	END
	ELSE
	BEGIN
		DELETE FROM [dbo].[LENHDAT]
			 WHERE ID=@ID
	END
END
GO
/****** Object:  Trigger [dbo].[TR_AfterUpdate_LD]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER  [dbo].[TR_AfterUpdate_LD] 
   ON  [dbo].[LENHDAT] 
   AFTER UPDATE 
AS 
BEGIN
	exec SP_RESET_BANGGIA
END
GO
/****** Object:  Trigger [dbo].[TR_AfterModify_LENHKHOP]    Script Date: 6/2/2020 10:53:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER  [dbo].[TR_AfterModify_LENHKHOP] 
   ON  [dbo].[LENHKHOP] 
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
	DECLARE @MACP CHAR(7)

	DECLARE CurVar CURSOR FOR (SELECT DISTINCT MACP FROM dbo.LENHDAT WHERE CAST(NGAYDAT AS DATE) = CAST(GETDATE() AS DATE))

	OPEN CurVar

	FETCH NEXT FROM CurVar INTO @MACP
	WHILE (@@FETCH_STATUS <> -1)
		BEGIN
			DECLARE @GIAKHOP FLOAT, @KLKHOP INT
			SET @GIAKHOP = (SELECT TOP(1) LK.GIAKHOP
						FROM dbo.LENHKHOP LK INNER JOIN dbo.LENHDAT LD ON LK.IDLENHDAT = LD.ID
						WHERE LD.MACP = @MACP AND CAST(LK.NGAYKHOP AS DATE) = CAST(GETDATE() AS	DATE)
						ORDER BY LK.IDKHOP DESC)
			SET @KLKHOP = (SELECT TOP(1) LK.SOLUONGKHOP
						FROM dbo.LENHKHOP LK INNER JOIN dbo.LENHDAT LD ON LK.IDLENHDAT = LD.ID
						WHERE LD.MACP = @MACP AND CAST(LK.NGAYKHOP AS DATE) = CAST(GETDATE() AS	DATE)
						ORDER BY LK.IDKHOP DESC)

			UPDATE dbo.BANGGIATRUCTUYEN
			SET GIAKHOP = @GIAKHOP, KLKHOP = @KLKHOP
			WHERE MACP = @MACP	
			--JUMP
			FETCH NEXT FROM CurVar INTO @MACP
		END
	CLOSE CurVar
	DEALLOCATE CurVar
END


GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LENHDAT"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ALL_MACP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_ALL_MACP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BANGGIATRUCTUYEN"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MACP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MACP'
GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
