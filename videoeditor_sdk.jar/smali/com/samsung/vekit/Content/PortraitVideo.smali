.class public Lcom/samsung/vekit/Content/PortraitVideo;
.super Lcom/samsung/vekit/Content/Video;
.source "PortraitVideo.java"


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Content/Video;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V

    .line 9
    sget-object v0, Lcom/samsung/vekit/Common/Type/ContentType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ContentType;

    iput-object v0, p0, Lcom/samsung/vekit/Content/PortraitVideo;->contentType:Lcom/samsung/vekit/Common/Type/ContentType;

    .line 10
    return-void
.end method
