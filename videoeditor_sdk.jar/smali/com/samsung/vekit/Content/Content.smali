.class public Lcom/samsung/vekit/Content/Content;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "Content.java"


# instance fields
.field protected colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

.field protected contentType:Lcom/samsung/vekit/Common/Type/ContentType;

.field protected duration:J

.field protected height:I

.field protected width:I


# direct methods
.method protected constructor <init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ContentType;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "type"    # Lcom/samsung/vekit/Common/Type/ContentType;
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Content/Content;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    .line 22
    iput v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    .line 24
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentColorType;->SDR:Lcom/samsung/vekit/Common/Type/ContentColorType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 25
    return-void
.end method


# virtual methods
.method public getColorType()Lcom/samsung/vekit/Common/Type/ContentColorType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    return-object v0
.end method

.method public getContentType()Lcom/samsung/vekit/Common/Type/ContentType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/vekit/Content/Content;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/samsung/vekit/Content/Content;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/vekit/Content/Content;->width:I

    return v0
.end method

.method public setColorType(Lcom/samsung/vekit/Common/Type/ContentColorType;)V
    .locals 0
    .param p1, "colorType"    # Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 63
    iput-object p1, p0, Lcom/samsung/vekit/Content/Content;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 64
    return-void
.end method

.method public setDuration(J)Lcom/samsung/vekit/Content/Content;
    .locals 0
    .param p1, "duration"    # J

    .line 54
    iput-wide p1, p0, Lcom/samsung/vekit/Content/Content;->duration:J

    .line 55
    return-object p0
.end method

.method public setHeight(I)Lcom/samsung/vekit/Content/Content;
    .locals 0
    .param p1, "height"    # I

    .line 49
    iput p1, p0, Lcom/samsung/vekit/Content/Content;->height:I

    .line 50
    return-object p0
.end method

.method public setWidth(I)Lcom/samsung/vekit/Content/Content;
    .locals 0
    .param p1, "width"    # I

    .line 44
    iput p1, p0, Lcom/samsung/vekit/Content/Content;->width:I

    .line 45
    return-object p0
.end method
