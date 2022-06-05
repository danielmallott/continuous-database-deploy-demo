CREATE TABLE [dbo].[Elements] (
    [ElementId]  VARCHAR (10) NOT NULL,
    [PartNumber] VARCHAR (20) NOT NULL,
    [ColorId]    INT          NOT NULL,
    CONSTRAINT [PK_Elements] PRIMARY KEY CLUSTERED ([ElementId] ASC),
    CONSTRAINT [FK_Elements_Colors] FOREIGN KEY ([ColorId]) REFERENCES [dbo].[Colors] ([ColorId]),
    CONSTRAINT [FK_Elements_Parts] FOREIGN KEY ([PartNumber]) REFERENCES [dbo].[Parts] ([PartNumber])
);

