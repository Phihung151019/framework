.class public Lcom/samsung/vekit/Item/ImageItem;
.super Lcom/samsung/vekit/Item/Item;
.source "ImageItem.java"


# instance fields
.field private filter:Lcom/samsung/vekit/Common/Object/Filter;

.field private filterIntensity:F

.field private filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

.field private opacity:F

.field private toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/samsung/vekit/Common/Type/ItemType;->IMAGE:Lcom/samsung/vekit/Common/Type/ItemType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Item/Item;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ItemType;ILjava/lang/String;)V

    .line 21
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    .line 30
    new-instance v0, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    .line 31
    new-instance v0, Lcom/samsung/vekit/Common/Object/FilterOption;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/FilterOption;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 32
    return-void
.end method

.method private initializeTone()V
    .locals 1

    .line 123
    new-instance v0, Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-direct {v0}, Lcom/samsung/vekit/Common/Object/ToneInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    .line 124
    return-void
.end method


# virtual methods
.method public checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    .locals 2
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->IMAGE:Lcom/samsung/vekit/Common/Type/ContentType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/vekit/Content/Content;->getContentType()Lcom/samsung/vekit/Common/Type/ContentType;

    move-result-object v0

    sget-object v1, Lcom/samsung/vekit/Common/Type/ContentType;->ANIMATED_IMAGE:Lcom/samsung/vekit/Common/Type/ContentType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "isInvalidElement : please set image or animated_image(content)."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public getFilter()Lcom/samsung/vekit/Common/Object/Filter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    return-object v0
.end method

.method public getFilterIntensity()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    return v0
.end method

.method public getFilterOption()Lcom/samsung/vekit/Common/Object/FilterOption;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    return-object v0
.end method

.method public getMeshType()Lcom/samsung/vekit/Common/Type/MeshType;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    return v0
.end method

.method public getToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;)I
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;

    .line 97
    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 3
    .param p1, "content"    # Lcom/samsung/vekit/Content/Content;

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->checkValidContent(Lcom/samsung/vekit/Content/Content;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/ImageItem;

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Item/ImageItem;->TAG:Ljava/lang/String;

    const-string v2, "setContent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-object p0
.end method

.method public bridge synthetic setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setContent(Lcom/samsung/vekit/Content/Content;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/samsung/vekit/Item/ImageItem;
    .locals 1
    .param p1, "duration"    # J

    .line 63
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setDuration(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/ImageItem;

    return-object v0
.end method

.method public bridge synthetic setDuration(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/ImageItem;->setDuration(J)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0
    .param p1, "filter"    # Lcom/samsung/vekit/Common/Object/Filter;

    .line 73
    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filter:Lcom/samsung/vekit/Common/Object/Filter;

    .line 74
    return-object p0
.end method

.method public bridge synthetic setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setFilter(Lcom/samsung/vekit/Common/Object/Filter;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setFilterIntensity(F)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0
    .param p1, "filterIntensity"    # F

    .line 84
    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterIntensity:F

    .line 85
    return-object p0
.end method

.method public bridge synthetic setFilterIntensity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setFilterIntensity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setFilterOption(Lcom/samsung/vekit/Common/Object/FilterOption;)V
    .locals 0
    .param p1, "filterOption"    # Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 128
    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->filterOption:Lcom/samsung/vekit/Common/Object/FilterOption;

    .line 129
    return-void
.end method

.method public setMeshType(Lcom/samsung/vekit/Common/Type/MeshType;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0
    .param p1, "meshType"    # Lcom/samsung/vekit/Common/Type/MeshType;

    .line 113
    iput-object p1, p0, Lcom/samsung/vekit/Item/ImageItem;->meshType:Lcom/samsung/vekit/Common/Type/MeshType;

    .line 114
    return-object p0
.end method

.method public bridge synthetic setOpacity(F)Lcom/samsung/vekit/Common/Object/Element;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;
    .locals 0
    .param p1, "opacity"    # F

    .line 108
    iput p1, p0, Lcom/samsung/vekit/Item/ImageItem;->opacity:F

    .line 109
    return-object p0
.end method

.method public bridge synthetic setOpacity(F)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setOpacity(F)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setPadding(J)Lcom/samsung/vekit/Item/ImageItem;
    .locals 1
    .param p1, "padding"    # J

    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/vekit/Item/Item;->setPadding(J)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/ImageItem;

    return-object v0
.end method

.method public bridge synthetic setPadding(J)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/samsung/vekit/Item/ImageItem;->setPadding(J)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/ImageItem;
    .locals 1
    .param p1, "parent"    # Lcom/samsung/vekit/Layer/Layer;

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/vekit/Item/Item;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/ImageItem;

    return-object v0
.end method

.method public bridge synthetic setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/Item;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/vekit/Item/ImageItem;->setParent(Lcom/samsung/vekit/Layer/Layer;)Lcom/samsung/vekit/Item/ImageItem;

    move-result-object p1

    return-object p1
.end method

.method public setToneIntensity(Lcom/samsung/vekit/Common/Type/ToneType;I)Lcom/samsung/vekit/Item/Item;
    .locals 1
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;
    .param p2, "intensity"    # I

    .line 91
    iget-object v0, p0, Lcom/samsung/vekit/Item/ImageItem;->toneInfo:Lcom/samsung/vekit/Common/Object/ToneInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/Object/ToneInfo;->setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V

    .line 92
    return-object p0
.end method
