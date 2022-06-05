﻿CREATE TABLE [dbo].[Colors] (
    [ColorId]   INT           NOT NULL,
    [ColorName] VARCHAR (200) NOT NULL,
    [RGB]       CHAR (6)      NOT NULL,
    [IsTrans]   BIT           NOT NULL,
    CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED ([ColorId] ASC)
);

