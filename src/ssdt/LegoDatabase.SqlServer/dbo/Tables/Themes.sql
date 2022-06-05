CREATE TABLE [dbo].[Themes] (
    [ThemeId]       INT          NOT NULL,
    [ThemeName]     VARCHAR (42) NOT NULL,
    [ParentThemeId] INT          NULL,
    CONSTRAINT [PK_Themes] PRIMARY KEY CLUSTERED ([ThemeId] ASC),
    CONSTRAINT [FK_Themes_ParentTheme] FOREIGN KEY ([ParentThemeId]) REFERENCES [dbo].[Themes] ([ThemeId])
);

