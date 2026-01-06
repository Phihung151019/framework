.class public Lcom/samsung/vekit/Common/Object/DoodleStroke;
.super Ljava/lang/Object;
.source "DoodleStroke.java"


# instance fields
.field private isAuto:Z

.field private mosaicStrength:I

.field private patternURI:Ljava/lang/String;

.field private penType:Lcom/samsung/vekit/Common/Type/PenType;

.field private final pointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeSize:I

.field private strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;


# direct methods
.method public constructor <init>(IILcom/samsung/vekit/Common/Type/PenType;Z)V
    .locals 1
    .param p1, "strokeColor"    # I
    .param p2, "strokeSize"    # I
    .param p3, "penType"    # Lcom/samsung/vekit/Common/Type/PenType;
    .param p4, "isAuto"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 23
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 24
    iput p2, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 25
    iput-object p3, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    .line 28
    iput-boolean p4, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/samsung/vekit/Common/Object/DoodleStroke;)V
    .locals 2
    .param p1, "doodleStroke"    # Lcom/samsung/vekit/Common/Object/DoodleStroke;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 32
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 33
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 34
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 35
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 36
    iget v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    iput v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 37
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    .line 38
    iget-boolean v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    iput-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public addDoodlePoint(Lcom/samsung/vekit/Common/Object/DoodlePoint;)V
    .locals 1
    .param p1, "doodlePoint"    # Lcom/samsung/vekit/Common/Object/DoodlePoint;

    .line 108
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public addDoodlePointList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "doodlePointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/vekit/Common/Object/DoodlePoint;>;"
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    return-void
.end method

.method public clear()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    return-void
.end method

.method public getDoodlePointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/vekit/Common/Object/DoodlePoint;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->pointList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMosaicStrength()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    return v0
.end method

.method public getPatternURI()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPenType()Lcom/samsung/vekit/Common/Type/PenType;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    return v0
.end method

.method public getStrokeSize()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    return v0
.end method

.method public getStrokeType()Lcom/samsung/vekit/Common/Type/StrokeType;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object v0
.end method

.method public isAuto()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->isAuto:Z

    return v0
.end method

.method public setMosaicStrength(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "mosaicStrength"    # I

    .line 94
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->mosaicStrength:I

    .line 95
    return-object p0
.end method

.method public setPatternURI(Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "patternURI"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->patternURI:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public setPenType(Lcom/samsung/vekit/Common/Type/PenType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "penType"    # Lcom/samsung/vekit/Common/Type/PenType;

    .line 58
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->penType:Lcom/samsung/vekit/Common/Type/PenType;

    .line 59
    return-object p0
.end method

.method public setStrokeColor(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "strokeColor"    # I

    .line 76
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeColor:I

    .line 77
    return-object p0
.end method

.method public setStrokeSize(I)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "strokeSize"    # I

    .line 103
    iput p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeSize:I

    .line 104
    return-object p0
.end method

.method public setStrokeType(Lcom/samsung/vekit/Common/Type/StrokeType;)Lcom/samsung/vekit/Common/Object/DoodleStroke;
    .locals 0
    .param p1, "strokeType"    # Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 67
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/DoodleStroke;->strokeType:Lcom/samsung/vekit/Common/Type/StrokeType;

    .line 68
    return-object p0
.end method
