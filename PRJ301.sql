USE [master]
GO
/****** Object:  Database [PRJ301]    Script Date: 3/14/2023 1:07:43 PM ******/
CREATE DATABASE [PRJ301]
 
GO
USE [PRJ301]
GO
/****** Object:  Table [dbo].[Account_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE163547](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [varchar](150) NULL,
	[email] [varchar](255) NULL,
 CONSTRAINT [PK_Account_HE163547] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_HE163547](
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[ZipCode] [varchar](150) NULL,
	[telephone] [varchar](20) NULL,
	[uID] [int] NOT NULL,
 CONSTRAINT [PK_Bill_HE163547] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart_HE163547](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE163547](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLine_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine_HE163547](
	[pID] [int] NOT NULL,
	[uID] [int] NOT NULL,
	[quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_HE163547](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product_HE163547] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review_HE163547](
	[uName] [varchar](50) NULL,
	[uEmail] [varchar](200) NULL,
	[review] [varchar](1000) NOT NULL,
	[rate] [int] NOT NULL,
	[pID] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE163547] ON 

INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1, N'daivip', N'123', 0, N'1', N'daibqhe163547@fpt.edu.vn')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (2, N'dai', N'1', 0, N'0', N'ducc@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (3, N'dai22', N'1', 0, N'0', N'ducc@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (4, N'ducc', N'123', 0, N'0', N'ducc@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (5, N'an3', N'123', 0, N'0', N'ducc@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (6, N'dai12', N'123', 0, N'0', N'dai123@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (7, N'dai123', N'123', 1, N'0', N'buiquangdai23012002@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (8, N'user', N'1234', 0, N'0', N'user@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (9, N'zzzz', N'123', 0, N'0', N'zz@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (10, NULL, N'1', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (11, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (12, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (13, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (14, NULL, N'1', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (15, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (16, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (17, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (18, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (19, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (20, NULL, N'123', 0, N'0', N'an@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (21, NULL, N'123', 0, N'0', N'alo@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (22, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (23, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (24, NULL, N'1', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (25, NULL, N'123', 0, N'0', N'dai1@gmail.com')
INSERT [dbo].[Account_HE163547] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (26, N'thach', N'123', 0, N'0', N'thachconcac@gmail.com')
SET IDENTITY_INSERT [dbo].[Account_HE163547] OFF
GO
INSERT [dbo].[Bill_HE163547] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'Ð?c', N'Nguy?n', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'vietnam', N'123456', N'0814494436', 1)
INSERT [dbo].[Bill_HE163547] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'an', N'nguyen', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'Vi?t Nam', N'253654', N'123456789', 2)
INSERT [dbo].[Bill_HE163547] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'minh anh', N'pham', N'hanoi', N'hanoi', N'vietnam', N'253654', N'1234567', 4)
INSERT [dbo].[Bill_HE163547] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'an', N'nguyen', N'd?i h?c fpt co s? hòa l?c', N'th?ch hòa, th?ch th?t, hà n?i', N'Vi?t Nam', N'253654', N'123456789', 10)
INSERT [dbo].[Bill_HE163547] ([FirstName], [LastName], [address], [City], [Country], [ZipCode], [telephone], [uID]) VALUES (N'trung', N'pham', N'hoa lac', N'hanoi', N'vietnam', N'000', N'123', 12)
GO
INSERT [dbo].[Category_HE163547] ([cid], [cname]) VALUES (1, N'Aspire')
INSERT [dbo].[Category_HE163547] ([cid], [cname]) VALUES (2, N'Oxva')
INSERT [dbo].[Category_HE163547] ([cid], [cname]) VALUES (3, N'Nevoks')
INSERT [dbo].[Category_HE163547] ([cid], [cname]) VALUES (4, N'Voopoo')
GO
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (5, 10, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (2, 10, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1013, 10, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (3, 4, 2)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (6, 4, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1015, 1, 3)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1016, 1, 2)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1013, 4, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (4, 12, 5)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1013, 12, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (1011, 10, 1)
INSERT [dbo].[OrderLine_HE163547] ([pID], [uID], [quantity]) VALUES (9, 10, 5)
GO
SET IDENTITY_INSERT [dbo].[product_HE163547] ON 

INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Smok Nord 4 80W Pod Kit', N'https://vapetinhte.com/wp-content/uploads/2020/11/Smok-Nord-4-full-color-vapetinhte-ha-noi.png', 56.0000, NULL, N'Macbook Air 2022 is designed to be thin and light with a weight of 1.24 kg. The entire shell is still kept the sturdy and durable aluminum material, so it still shows the luxury and class. Besides, the soft rounded edges and thin bevels bring a beautiful and extremely neat overall.
', 1, 1)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Aspire Flexus Stik Pod Kit', N'https://vapechinhhang.com/wp-content/uploads/2022/08/Aspire-Flexus-Stik.jpg', 85.0000, N'Aspire Flexus Stik has a maximum capacity of 18W, a capacity of 3ml, 2 coils and uses advanced technology. Is one of the products worth buying in 2022!', N'The capacity of the product reaches 3ml, which can hold all your favorite essential oils. Not only that, Flexus Stik also has 2 coils with different capacities of 12-15w and 15-18w. Thus, the maximum power of the product is 18w. Both coils with parameters of 0.6 ohm and 1.0 ohm respectively bring different vaping experiences with smooth smoke. Kanthal AF material is a typical material used in coil lines, this material has good strength and very high heat resistance.

Flexus with refill mechanism below, you just need to open the rubber cap on the bottom of the device and refill the essential oil inside. Another special feature is that the pod of the product can rotate the head. Very cool and amazing isn''t it!!!

The product applies modern technology with up to 6 protection modes for the device when in use, including: overtime, over temperature, overload, full battery, out of battery, circuit breaker.

Flexus is designed with a rubber button located below and a 3-color LED ring corresponding to 3 modes. Green – strong, Blue – medium, Red – weak. To turn the appliance on or off, press the burn button 5 times. Change the mode of pressing the burning button 3 times. You can activate the product by pressing the button or the suction sensor.', 1, 2)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'OXVA Origin 2', N'https://vapehanghieu.com/wp-content/uploads/2022/12/oxva-origin-2-pod-kit-1.jpg', 98.1000, N'SPECIFICATION
Output power: 5-80w
Pod capacity: 5ml / 2ml
Resistance range: 0.1-3.0Ω
Airflow control: RDA . style airflow control
Battery: 18650 Battery
Charger: Type-C / 5V / 2A
Display: 0.69”
OLED Material: Zinc Alloy + Leather + PCTG 0.69 “OLED Display Two Buttons”
Dimensions: 122.1×33.0×26.3mm
Weight: 119g
Status: In stock', N'OXVA Origin 2 Pod System is the latest release of Oxva this year, the device has a powerful capacity of up to 80w, can use freebase essential oil and salt nic. It is powered by 1 18650 battery which is easy to replace and upgrade. In this version Origin 2 has been equipped with the UNIONE system to accept both Unicoil and Uniplus reels. Gradient on metal frame and leather trim to improve its overall texture and style.

OXVA Origin 2 connects to Unicoil and Uniplus

Definitely the most stylish and competitive pod mod of its kind. The Origin 2''s case is made from a durable zinc alloy, the metal frame is resistant to drops and drops, and protects the proprietary chipset inside.', 2, 3)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Feelin C1 Nevoks Pod Kit', N'https://5vape.com/wp-content/uploads/2022/05/Feelin-C1-Nevoks-Pod-Kit-400x400.png', 55.0000, N'Feelin C1 is the newest member of the Feelin Series released by the Nevoks family in May 2022. With a unique design and impressive performance parameters and performance, the Feelin C1 pod is sure to be a very hot name in the pod system market in the near future.', N'Remaining the same square cylinder design typical of Feelin series products, however, C1 is much slimmer and slimmer. The extremely unique transparent shell design makes Feelin C1 stand out and attract the eye. The body is constructed from ABS plastic which reduces weight significantly but still ensures the device has impressive durability. Despite its light weight, the grip feels very solid and extremely comfortable.

Feelin C1 Attracts Eyes With Unique Appearance

Feelin C1 Nevoks Equipped with Huge Battery, Super Fast Recharge
Inside the slim body is a battery with a capacity of up to 1000mAh that allows you to vaping comfortably all day. The Type-C fast charging port is equipped on the side of the body to fully charge the battery in less than 1 hour.', 3, 4)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Aspire Flexus Stik', N'https://thesmokytown.com/wp-content/uploads/2022/10/flexus-stik-pod-kit-thumb.jpg', 54.8000, N'Aspire Flexus Stik Pod Kit was born with a classic cylindrical basic design similar to a vape pen device. Compact size, with an indescribable charm. Despite being a cheap vape kit, Aspire still equips Flexus Stik with an exclusive ASP', N'Aspire Flexus Stik Pod Kit was born with a classic cylindrical basic design similar to a vape pen device. Compact size, with an indescribable charm. Despite being a cheap vape kit, Aspire still equips Flexus Stik with an exclusive ASP Chipset protection chip. The drop-shaped vape-drip tip will fascinate vapers from the first touch of the lips.
The Aspire Flexus Stik Pod Kit is cylindrical in shape, with a tapered dropper at the top (removable for easy cleaning). I got the Black finish, simple and sleek. Overall, the Stik is very pocket-friendly and portable, weighing just 57g fully assembled.', 1, 4)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'VOOPOO DRAG S PRO 80W Starter Kit', N'https://vapechinhhang.com/wp-content/uploads/2022/06/Drag-S-Pro-man-hinh-dung-tich-pod-lon.jpg', 75.0000, N'Drag S Pro 80w is the latest product of the Voopoo family. With super beautiful design and great uses. Once you own it, you will absolutely love it.', N'VooPoo Drag S Pro is the latest iteration of the VooPoo Drag S series. Drag S Pro has been pushing the boundaries of technology between new possibilities and professionalism. Crafted from durable zinc alloy and polished leather, the Drag S Pro presents a visually striking appearance while protecting the device from accidental drops and falls.
Drag S Pro profile picture
Drag S Pro with a sleek, luxurious look
VooPoo Drag S Pro is the latest version with 3000mAh built-in battery powered device powered by GENE.FAN 3.0 chipset, offers loads of modes and paired with VooPoo TPP-X Pod. The new TPP-X cartridge is equipped with a child-resistant structure: a “semi-hidden button”. You have to press the semi-hidden button and rotate it to the left before pulling out the silicone plug and filling it up. The cartridge is tailored to the most powerful coil of the TPP platform. Bringing you an unprecedented TPP taste and powerful experience!', 4, 2)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Voopoo V Suit Pod Kit 40W', N'https://vapetinhte.com/wp-content/uploads/2020/11/VOOPOO-V.SUIT-Pod-Kit-Full-Color-VapeTinhTe.jpg', 67.9000, N'The allure of minimalism , the integrated V.SUIT uses a leather-like matte finish process resin, which reduces weight while maintaining a great aesthetic feel. The leather-like matte finish makes V.SUIT''s colors very textured, and any color held in the hand feels like a work of art.', N'The Voopoo V.SUIT pod vape kit integrates a 0.54 inch OLED screen where you can check the parameter settings and the number of sprays. Of course, V.SUIT is equipped with the new PnP MTL pod, thanks to the new PnP-TR1 and PnP-TM2 Coil, these coils are specially designed to achieve the purest MTL vaping. V.SUIT PnP MTL Pod has 2ml capacity, it can also support PnP coil from 0.3ohm or more, whether it''s DTL or MTL, you can find the most suitable choice

VOOPOO V.SUIT Pod Kit warm gray
VOOPOO V.SUIT Pod Kit warm gray
Specifications :
Name VOOPOO V.SUIT Pod Kit
Dimensions: 26mm x 26mm x 100mm
Material:Plastic
Weight: 69g
Battery capacity: 1200mAh built-in battery
Output power:5-40W
Output voltage:3.2-4.2V
Maximum resistance :0.3-3.0Ω
0.54" OLED display
Pod Capacity: 2ml
Material:PCTG
Fill Type: Bottom Fill
Coil Coil :1.2Ω (PnP-TR1) 0.8Ω (PnP-TM2)
Note it is also compatible with all other Voopoo coils
Product set includes:
1 V.SUIT . device
1 PnP MTL Pod (2ml)
1 PnP-TR1, 1.2ohm
1 PnP-TR2, 0.8ohm
1 Type-C . Cable', 4, 1)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'VOOPOO VINCI X Pod Kit 70w', N'https://nightcloudvapesg.vn/wp-content/uploads/2021/12/VINCI-X-Pod-system.jpg', 75.0000, N'VOOPOO VINCI X Kit pioneers a new era of MOD. Compared to VOOPOO VINCI, the lifespan of VOOPOO VINCI X Mod Pod Kit will give you enjoyment.', N'VOOPOO VINCI X Pod Kit is smaller in size, simpler in operation and safer to use. VINCI X is pioneering MOD into a new era of AI and mobility. Powered by a single 18650 battery with 70W max output and 5.5ml Pod capacity, will deliver higher power, longer and bigger smoke clouds. Moreover, the screw-on battery cover makes it more convenient to change your battery.
On hand VOOPOO VINCI X Pod Kit 70w
On hand VOOPOO VINCI X Pod Kit 70w
The GENE.AI smart chip makes VINCI X more convenient and steam-friendly than other mods. Also, the e-juice capacity is visible and every drop of e-liquid left is noticeable. The breath is also visible and you can check your vaping habits through a puff curve.
VOOPOO VINCI X Pod Kit is highly integrated but small, different from traditional mods, up to', 4, 14)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1011, N'Nevoks FEELIN Pod Kit 22W', N'https://pinkvape.vn/wp-content/uploads/2022/12/Nevoks-Feelin-22W-Express-Pod-Kit.png', 25.0000, N'Nevoks FEELIN Pod Kit has a built-in 1000mAh battery. The capacity can be adjusted in 3 levels and has a capacity of up to 2.8mL. Airflow adjustment in two designed ways. Available for both Saltnic or Freebase. Operating on the new NX chipset system, Feelin supports automatic suction or suction. Giving users more flexibility. Equipped with a USB Type-C port below fast charging will reduce charging time.', N'Nevoks FEELIN Pod Kit has a built-in 1000mAh battery. The capacity can be adjusted in 3 levels and has a capacity of up to 2.8mL. Airflow adjustment in two designed ways. Available for both Saltnic or Freebase. Operating on the new NX chipset system, Feelin supports automatic suction or suction. Giving users more flexibility. Equipped with a USB Type-C port below fast charging will reduce charging time.', 3, 15)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1013, N'ASPIRE Cyber S Pod Kit', N'https://vapepod365.com/upload/product/img1602-4016.jpg', 102.7000, N'Aspire Cyber ​​S is a new generation product of the Aspire family with a design inspired by the very famous Cyberpunk story, bringing a very unique design that users have never seen before. It''s compact, but Cyber ​​S carries a fairly high battery up to 700mah and has 2 versions with resistance parameters of 0.8ohm and 1.0ohm. Both are used to specialize in Salt Nic essential oils serving all those who want to enjoy and quit smoking easily.', N'Aspire Cyber ​​S is a new generation product of the Aspire family with a design inspired by the very famous Cyberpunk story, bringing a very unique design that users have never seen before. It''s compact, but Cyber ​​S carries a fairly high battery up to 700mah and has 2 versions with resistance parameters of 0.8ohm and 1.0ohm. Both are used to specialize in Salt Nic essential oils serving all those who want to enjoy and quit smoking easily.
Cyber ​​S is designed for extreme portability, the case uses PC plastic material to reduce weight as low as possible. The surface of the machine is smooth and rounded to give you the best grip.', 1, 1)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1015, N'Nevoks Pagee 30w Pod Kit', N'https://vapechinhhang.com/wp-content/uploads/2022/06/anh-dai-dien.jpg', 27.4600, N'Nevoks Pagee 30w can use the ignition function and also automatically burn the steam sensor, which is extremely convenient. Pagee 30W is highly appreciated not only for its beautiful appearance, but its NEVOKS NX CHIP chipset is really good for even and stable combustion.', N'Pagee Pod Nevoks has a compact appearance and luxurious, outstanding glossy resin texture. The design of the air system has been optimized to effectively prevent oil leakage and is easily adjusted to absorb both MTL and DTL models.



Pagee has a capacity of 30W and the battery is built into the machine with a capacity of 950 mAh to operate at full capacity. The inside of the machine is equipped with the machine''s NEVOKS NX CHIP chipset for even and stable combustion.



Comes with the device is a pod with a capacity of up to 2.2ml and uses occ SPL-10 0.6 ohm (Mesh coil), SPL-1 1.0 ohm (Mesh coil) so you can experience both freebase e-liquid, salt nicotine .



Specifications :
Dimensions: 77.6 x 44.6 x 1 2.6mm
Battery capacity: 950mAh
Power: 5-30W
Resistance : 3.3-4.2v
Burning speed: 0.001s
Charging port: Type-C 5V/2A
Charging time: 40 mins
Pod Capacity: 2.2ml
Impedance : Mesh Coil 0.6Ω (15-25W) / Conventional Coil 1.0Ω (10-15W)', 3, 2)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1016, N'Nevoks Feelin C1 30W Pod Kit
', N'https://pinkvape.vn/wp-content/uploads/2022/09/Nevoks-Feelin-C1-30W-Pod-Kit.png', 30.0000, N'Nevoks Feelin C1 30W Pod Kit is another potential element of the Nevoks family. With PC+ABS plastic material and transparent outer shell design, you can see the boards inside, very interesting isn''t it.', N'Nevoks still uses the NX chipset:

Overtime protection
No-load protection
Overload protection
Over discharge protection
Overheat protection
Short circuit protection
Low voltage protection


Nevoks Feelin C1 still retains the Mesh Coil SPL-10 ecosystem, so finding OCC is too easy. In this device, Nevoks has integrated a battery of up to 1000mAh to help you vaping comfortably for a long time. In addition, Nevoks Feelin C1 supports fast charging up to 2A, helping you to fully charge in 20-30 minutes.



Feelin C1 is like a twin brother of Feelin 22W with the function of adjusting the wind by rotating the pod head. Fits MTL and RL.



Like the button mechanism of the other twin, the Nevoks Feelin C1 30W Pod Kit has a button and an LED indicator. You can adjust the burning power level to suit Salt Nic or Freebase, MTL or RL depending on your preference. With the operation 3 times in a row to adjust 3 power levels in turn in the order of strong / medium / weak, equivalent to 3 light levels.



Specifications:
About the pod:
Capacity: 2.8ml (2ml TPD version)
Suction head material: TPE
Container material: PCTG
Core Capacity: SPL-10 Mesh Coil 0.6Ω and 1.0Ω
About the body:
Size: 107*22*18mm
Weight: 37G
Combustion power: 10-30W
Input power: 3.3-4.2V
Battery capacity: 100 mAh
Machine material: PC+ABS
Type-C port supports fast charging', 3, 4)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1017, N'OXVA ORIGIN X 60W POD KIT
', N'https://nicpodsystem.com/wp-content/uploads/2021/11/1.jpg', 56.0000, N'The OXVA Origin X features a patented Photon chipset that delivers stable and high performance to vapers. The OXVA Origin X is a versatile pod with an additional RBA combustion chamber (not included) that gives vapers the flexibility to use depending on their taste preferences. Built-in trendy Type C fast charging port helps you quickly vaping energy for the new day.', N'The OXVA Origin X features a patented Photon chipset that delivers stable and high performance to vapers. The OXVA Origin X is a versatile pod with an additional RBA combustion chamber (not included) that gives vapers the flexibility to use depending on their taste preferences. Built-in trendy Type C fast charging port helps you quickly vaping energy for the new day.', 2, 6)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1018, N'Xlim pod kit', N'https://nicpodsystem.com/wp-content/uploads/2021/11/1.jpg', 25.0000, N'Specifications

Dimensions: 111 x 24 x 14mm
Weight: 47g
Pod Head Capacity: 2ml
Battery Capacity 900mAh
Battery: 900 mAh
0.42inch . OLED Screen
Coil: Mesh Coil 0.8ohm (12 – 16W) / Mesh Coil 1.2ohm (10-12W)
Type-C fast charger', N'Specifications

Dimensions: 111 x 24 x 14mm
Weight: 47g
Pod Head Capacity: 2ml
Battery Capacity 900mAh
Battery: 900 mAh
0.42inch . OLED Screen
Coil: Mesh Coil 0.8ohm (12 – 16W) / Mesh Coil 1.2ohm (10-12W)
Type-C fast charger', 2, 7)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1019, N'Aspire Minican 2', N'https://donavape.vn/image/cache/catalog/untitled%20folder%203/minican-2-500x500.png', 14.0000, N'Minican 2 by Aspire is a product line launched by the Aspire family at the end of 2021 and early 2022. The design is simple, not too eye-catching, but the transparent plastic layer exalts the colors hidden behind it. It is shimmering, twice as attractive when viewed with the naked eye.

– Product name: Minican 2
– Weight: 28g
– Unit of product: SetMinican 2 by Aspire is a product line launched by the Aspire family at the end of 2021 and early 2022. The design is simple, not too eye-catching, but the transparent plastic layer exalts the colors hidden behind it. It is shimmering, twice as attractive when viewed with the naked eye.

– Product name: Minican 2
– Weight: 28g
– Unit of product: Set', N'The Minican 2''s design is extremely compact with an extremely light weight of only 28g, estimated with just one finger, so it means that accidentally dropping it will not affect the internal components.
', 1, 7)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1025, N'Gotek X Pod by Aspire 2023', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL2V6kTMcS69qy4FFpmMWaf5XBrL7ye2r3tQ&usqp=CAU', 15.0000, N'Gotek X Pod by Aspire super product with futuristic technology beauty, like a miniature mini robot
The Gotek X Pod is a line of user-friendly pod systems. Compact design enhances dynamism. Unlike the Riil X Pod, which uses metal materials. Gotek X pod is made of PC material that is safe for everyone. Thanks to this advantage, the pod also becomes lighter and more comfortable.', N'Aspire Gotek X is equipped with a pod head that can hold up to 5ml of vape oil, which can be said to be a desirable number of current pod systems.
This device well supports MTL suction because it uses Aspire''s latest combustion core, 0.8ohm mesh coil will bring a very good taste experience, if you have ever used OCC AF Mesh Coil for Riil X or Flexus Q can also imagine its deliciousness.
Similar to Riil X, Aspire Gotek X also offers a smart suction sensing experience without users having to adjust any buttons. Your job is just to enjoy the smoke!

What''s more, this device allows you to adjust the latest airflow system, as well as the unique design of the oil filling hole on the side of the body.
Of course, it also has the latest Type-C fast charging port integrated today, charging the battery is no longer an annoyance when it only takes about 45 minutes for you to continue to experience.

Super product Aspire Gotek X is likened to a mini robot that crosses the future tunnel, bringing a very vivid experience to users. Let''s count down its release date, guys! Definitely not to be missed if you are an avid pod system collector.', 1, 2)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1028, N'OXVA ORIGIN X 60W 18650 POD KIT', N'https://donavape.vn/image/cache/catalog/oxva-500x500.jpg', 50.0000, N'Tai nghe Bluetooth Apple AirPods Pro 2021 Chính hãng Apple Việt Nam sở hữu thiết kế sang trọng, cao cấp với kiểu dáng vô cùng nhỏ gọn. Tai nghe có chất âm vô cùng sống động với chip xử lý âm thanh H1 cùng công nghệ Adaptive EQ, kết hợp với khả năng chống ồn chủ động cùng xuyên âm.

Tai nghe AirPods Pro 2021 Chính hãng là phiên bản dành cho thị trường Việt Nam,máy nguyên seal mới 100%. Sản phẩm nhận bảo hành theo chính sách của Apple Việt Nam đồng thời hưởng nhiều ưu đãi đặc biệt hấp dẫn tại Di Động Việt.', N'Tai nghe Bluetooth Apple AirPods Pro 2021 Chính hãng Apple Việt Nam sở hữu thiết kế sang trọng, cao cấp với kiểu dáng vô cùng nhỏ gọn. Tai nghe có chất âm vô cùng sống động với chip xử lý âm thanh H1 cùng công nghệ Adaptive EQ, kết hợp với khả năng chống ồn chủ động cùng xuyên âm.

Tai nghe AirPods Pro 2021 Chính hãng là phiên bản dành cho thị trường Việt Nam,máy nguyên seal mới 100%. Sản phẩm nhận bảo hành theo chính sách của Apple Việt Nam đồng thời hưởng nhiều ưu đãi đặc biệt hấp dẫn tại Di Động Việt.', 2, 3)
INSERT [dbo].[product_HE163547] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1029, N'Cloudflask Pod Kit ', N'https://thevape.vn/wp-content/uploads/2021/06/aspire-flask-pod-kit-15.png', 75.5000, N'Cloudflask Pod Kit By Aspire is a pod Kit with a unique and eye-catching design, dubbed a "portable smoke pot", with a battery capacity of up to 2000mah. The machine is equipped with Bypass discharge mode for the best discharge capacity according to the battery.', N'Simple design with wind and Fire button in the middle of the body, the charging port and 2 buttons to open the chamber are arranged on the side. Also, I have a few tips for you:

– Cloud Flask is available with 2 occ 0.25 mesh, freebase suction is not inferior to the BP coil of Nautilus Prime. Contraindicated high dose nicotine salt smoking.

 – Battery bypass discharger (max 50W at 100%)

 – 2000mah internal battery / Type-C 5V2A Fast Charger (apart from Nautilus Prime)

   – 100% stainless steel body (Harder/more durable than the aluminum case of Nautilus Prime)

 – Driptip 810 is replaceable.', 1, 3)
SET IDENTITY_INSERT [dbo].[product_HE163547] OFF
GO
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguyenminhduc', N'kingofthedeath098@gmail.com', N'dsad', 2, 1)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'hello wotld', 4, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'trung', N'trungpxhs461623@fpt.edu.vn', N'hay vcl', 3, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'good ipad', 4, 4)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'ducnm098@gmail.com', N'helllo ', 5, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'hoag anh', N'kingofthedeath098@gmail.com', N'that''s a good product', 5, 4)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'kingofthedeath098@gmail.com', N'too expensive', 1, 1015)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'good', 5, 1019)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'ntthanh76c1dv@hanam.edu.vn', N'this product is not good', 1, 4)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'an nguyen', N'anhpmhe161347@fpt.edu.vn', N'not a good phone', 1, 1025)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'hoang anh', N'kingofthedeath098@gmail.com', N'goood', 2, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'an nguyen', N'kingofthedeath098@gmail.com', N'good', 3, 5)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'duc', N'kingofthedeath098@gmail.com', N'tesst program', 3, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'Nguy?n Minh Ð?c', N'kingofthedeath098@gmail.com', N'hello', 1, 3)
INSERT [dbo].[review_HE163547] ([uName], [uEmail], [review], [rate], [pID]) VALUES (N'quang', N'kingofthedeath098@gmail.com', N'hello', 4, 4)
GO
/****** Object:  Index [IX_Cart_HE163547]    Script Date: 3/14/2023 1:07:44 PM ******/
CREATE NONCLUSTERED INDEX [IX_Cart_HE163547] ON [dbo].[Cart_HE163547]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
