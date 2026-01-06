.class public Lcom/samsung/uwb/support/data/param/capsinfo/UwbConfigId;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "UwbConfigId.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SUPPORTED_UWB_CONFIG_ID"


# instance fields
.field private final uwbConfigId:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 13
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 14
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 15
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/UwbConfigId;->uwbConfigId:I

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "SUPPORTED_UWB_CONFIG_ID"

    invoke-super {p0, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
