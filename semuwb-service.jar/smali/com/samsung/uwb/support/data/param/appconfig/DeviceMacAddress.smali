.class public Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DeviceMacAddress.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DEVICE_MAC_ADDRESS"


# instance fields
.field public final deviceMacAddress:J


# direct methods
.method public constructor <init>(BI[B)V
    .locals 5
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 14
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    array-length v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;->deviceMacAddress:J

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;->deviceMacAddress:J

    .line 21
    :goto_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;->deviceMacAddress:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_MAC_ADDRESS"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
