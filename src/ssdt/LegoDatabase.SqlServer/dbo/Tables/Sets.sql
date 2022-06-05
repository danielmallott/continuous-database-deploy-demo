CREATE TABLE [dbo].[Sets] (
    [SetNumber]     VARCHAR (20)  NOT NULL,
    [SetName]       VARCHAR (256) NOT NULL,
    [ReleaseYear]   CHAR (4)      NOT NULL,
    [ThemeId]       INT           NOT NULL,
    [NumberOfParts] INT           NOT NULL,
    CONSTRAINT [PK_Sets] PRIMARY KEY CLUSTERED ([SetNumber] ASC),
    CONSTRAINT [FK_Sets_Themes] FOREIGN KEY ([ThemeId]) REFERENCES [dbo].[Themes] ([ThemeId])
);

