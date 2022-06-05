CREATE TABLE [dbo].[PartRelationships] (
    [RelationshipType] CHAR (1)     NOT NULL,
    [ChildPartNumber]  VARCHAR (20) NOT NULL,
    [ParentPartNumber] VARCHAR (20) NOT NULL,
    CONSTRAINT [FK_PartRelationships_PartsChild] FOREIGN KEY ([ChildPartNumber]) REFERENCES [dbo].[Parts] ([PartNumber]),
    CONSTRAINT [FK_PartRelationships_PartsParent] FOREIGN KEY ([ParentPartNumber]) REFERENCES [dbo].[Parts] ([PartNumber])
);

