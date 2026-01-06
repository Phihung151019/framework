.class public Lcom/samsung/android/sep/camera/util/StreamConfig;
.super Ljava/lang/Object;
.source "StreamConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sep/camera/util/StreamConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field private static final HAL_PIXEL_FORMAT_Y16:I = 0x20363159

.field private static final STREAM_CONFIG_LENGTH:I = 0x4


# instance fields
.field private final format:I

.field private final isInput:Z

.field private final size:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;Z)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "size"    # Landroid/util/Size;
    .param p3, "isInput"    # Z

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    .line 45
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    .line 46
    iput-boolean p3, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->isInput:Z

    .line 47
    return-void
.end method

.method public static toImageFormat(IZ)I
    .locals 1
    .param p0, "halPixelFormat"    # I
    .param p1, "forDepth"    # Z

    .line 94
    sparse-switch p0, :sswitch_data_0

    .line 101
    return p0

    .line 96
    :sswitch_0
    if-eqz p1, :cond_0

    const v0, 0x44363159

    goto :goto_0

    :cond_0
    const v0, 0x20363159

    :goto_0
    return v0

    .line 98
    :sswitch_1
    if-eqz p1, :cond_1

    const/16 v0, 0x101

    goto :goto_1

    :cond_1
    const/16 v0, 0x100

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x20363159 -> :sswitch_0
    .end sparse-switch
.end method

.method public static unMarshal([IZ)Ljava/util/List;
    .locals 7
    .param p0, "metas"    # [I
    .param p1, "forDepth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/StreamConfig;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/StreamConfig;>;"
    if-eqz p0, :cond_3

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 73
    new-instance v2, Lcom/samsung/android/sep/camera/util/StreamConfig;

    aget v3, p0, v1

    .line 75
    invoke-static {v3, p1}, Lcom/samsung/android/sep/camera/util/StreamConfig;->toImageFormat(IZ)I

    move-result v3

    new-instance v4, Landroid/util/Size;

    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    add-int/lit8 v6, v1, 0x2

    aget v6, p0, v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    add-int/lit8 v5, v1, 0x3

    aget v5, p0, v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/sep/camera/util/StreamConfig;-><init>(ILandroid/util/Size;Z)V

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 69
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/sep/camera/util/StreamConfig;)I
    .locals 3
    .param p1, "o"    # Lcom/samsung/android/sep/camera/util/StreamConfig;

    .line 119
    iget-object v0, p1, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    .line 120
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/samsung/android/sep/camera/util/StreamConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/util/StreamConfig;->compareTo(Lcom/samsung/android/sep/camera/util/StreamConfig;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sep/camera/util/StreamConfig;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/StreamConfig;

    iget v1, v1, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/StreamConfig;

    iget-object v1, v1, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    .line 138
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->isInput:Z

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sep/camera/util/StreamConfig;

    iget-boolean v1, v1, Lcom/samsung/android/sep/camera/util/StreamConfig;->isInput:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 135
    :goto_1
    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    return v0
.end method

.method public getSize()Landroid/util/Size;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 179
    iget v0, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    iget-boolean v2, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->isInput:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->size:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sep/camera/util/StreamConfig;->isInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
