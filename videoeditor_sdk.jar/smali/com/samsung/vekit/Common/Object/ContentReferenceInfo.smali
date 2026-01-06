.class public Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;
.super Ljava/lang/Object;
.source "ContentReferenceInfo.java"


# instance fields
.field private bitrate:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    .line 5
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    .line 6
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    .line 9
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    .line 10
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    .line 11
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    .line 12
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "bitrate"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    .line 5
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    .line 6
    iput v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    .line 15
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    .line 16
    iput p2, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    .line 17
    iput p3, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    .line 18
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0
    .param p1, "bitrate"    # I

    .line 33
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->bitrate:I

    .line 34
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 41
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->height:I

    .line 42
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 37
    iput p1, p0, Lcom/samsung/vekit/Common/Object/ContentReferenceInfo;->width:I

    .line 38
    return-void
.end method
