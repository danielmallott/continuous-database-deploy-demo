CREATE TABLE [dbo].[Minifigs] (
    [MinifigNumber] VARCHAR (20)  NOT NULL,
    [MinifigName]   VARCHAR (256) NOT NULL,
    [NumberOfParts] INT           NOT NULL,
    CONSTRAINT [PK_Minifigs] PRIMARY KEY CLUSTERED ([MinifigNumber] ASC)
);

