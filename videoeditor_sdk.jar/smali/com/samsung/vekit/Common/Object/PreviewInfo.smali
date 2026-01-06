.class public Lcom/samsung/vekit/Common/Object/PreviewInfo;
.super Ljava/lang/Object;
.source "PreviewInfo.java"


# instance fields
.field private colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/Type/ContentColorType;)V
    .locals 0
    .param p1, "colorType"    # Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PreviewInfo;->colorType:Lcom/samsung/vekit/Common/Type/ContentColorType;

    .line 10
    return-void
.end method
