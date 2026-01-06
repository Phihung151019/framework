.class public Lcom/samsung/vekit/Layer/AudioLayer;
.super Lcom/samsung/vekit/Layer/Layer;
.source "AudioLayer.java"


# instance fields
.field private volume:I


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;
    .param p2, "id"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 12
    sget-object v0, Lcom/samsung/vekit/Common/Type/LayerType;->AUDIO:Lcom/samsung/vekit/Common/Type/LayerType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/samsung/vekit/Layer/Layer;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/LayerType;ILjava/lang/String;)V

    .line 9
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/vekit/Layer/AudioLayer;->volume:I

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/vekit/Common/Type/ItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->FRAGMENT_AUDIO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->PORTRAIT_VIDEO:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/vekit/Common/Type/ItemType;->EMPTY:Lcom/samsung/vekit/Common/Type/ItemType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/vekit/Layer/AudioLayer;->availableTypes:[Lcom/samsung/vekit/Common/Type/ItemType;

    .line 14
    return-void
.end method


# virtual methods
.method public getVolume()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/samsung/vekit/Layer/AudioLayer;->volume:I

    return v0
.end method

.method public setVolume(I)Lcom/samsung/vekit/Layer/AudioLayer;
    .locals 0
    .param p1, "volume"    # I

    .line 21
    iput p1, p0, Lcom/samsung/vekit/Layer/AudioLayer;->volume:I

    .line 22
    return-object p0
.end method
