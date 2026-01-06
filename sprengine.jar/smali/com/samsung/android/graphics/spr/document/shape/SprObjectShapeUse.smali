.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeUse.java"


# instance fields
.field public link:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 7
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 56
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 58
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->alpha:F

    mul-float v6, p5, v0

    .line 60
    .local v6, "curAlpha":F
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 64
    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    .line 65
    .local v1, "link":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v1, :cond_1

    .line 66
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local p2    # "canvas":Landroid/graphics/Canvas;
    .end local p3    # "sx":F
    .end local p4    # "sy":F
    .local v2, "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .local v3, "canvas":Landroid/graphics/Canvas;
    .local v4, "sx":F
    .local v5, "sy":F
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    goto :goto_0

    .line 65
    .end local v2    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    .restart local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .restart local p2    # "canvas":Landroid/graphics/Canvas;
    .restart local p3    # "sx":F
    .restart local p4    # "sy":F
    :cond_1
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 69
    .end local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local p2    # "canvas":Landroid/graphics/Canvas;
    .end local p3    # "sx":F
    .end local p4    # "sy":F
    .restart local v2    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    .restart local v4    # "sx":F
    .restart local v5    # "sy":F
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 70
    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 30
    return-void
.end method

.method public getSPRSize()I
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getTotalElementCount()I
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getTotalSegmentCount()I
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 8
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "strokePaint"    # Landroid/graphics/Paint;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "isVisibleStroke"    # Z
    .param p5, "isVisibleFill"    # Z
    .param p6, "shadow"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 75
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getReference(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    .line 76
    .local v1, "link":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v1, :cond_0

    .line 77
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local p2    # "strokePaint":Landroid/graphics/Paint;
    .end local p3    # "fillPaint":Landroid/graphics/Paint;
    .end local p4    # "isVisibleStroke":Z
    .end local p5    # "isVisibleFill":Z
    .end local p6    # "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    .local v2, "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .local v3, "strokePaint":Landroid/graphics/Paint;
    .local v4, "fillPaint":Landroid/graphics/Paint;
    .local v5, "isVisibleStroke":Z
    .local v6, "isVisibleFill":Z
    .local v7, "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    goto :goto_0

    .line 76
    .end local v2    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local v3    # "strokePaint":Landroid/graphics/Paint;
    .end local v4    # "fillPaint":Landroid/graphics/Paint;
    .end local v5    # "isVisibleStroke":Z
    .end local v6    # "isVisibleFill":Z
    .end local v7    # "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    .restart local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .restart local p2    # "strokePaint":Landroid/graphics/Paint;
    .restart local p3    # "fillPaint":Landroid/graphics/Paint;
    .restart local p4    # "isVisibleStroke":Z
    .restart local p5    # "isVisibleFill":Z
    .restart local p6    # "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 79
    .end local p1    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .end local p2    # "strokePaint":Landroid/graphics/Paint;
    .end local p3    # "fillPaint":Landroid/graphics/Paint;
    .end local p4    # "isVisibleStroke":Z
    .end local p5    # "isVisibleFill":Z
    .end local p6    # "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    .restart local v2    # "document":Lcom/samsung/android/graphics/spr/document/SprDocument;
    .restart local v3    # "strokePaint":Landroid/graphics/Paint;
    .restart local v4    # "fillPaint":Landroid/graphics/Paint;
    .restart local v5    # "isVisibleStroke":Z
    .restart local v6    # "isVisibleFill":Z
    .restart local v7    # "shadow":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;
    :goto_0
    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;->link:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 37
    return-void
.end method
