.class public Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DeviceRole.java"


# static fields
.field private static final ADVERTISER:S = 0x10s

.field private static final DT_ANCHOR:S = 0x40s

.field private static final DT_TAG:S = 0x80s

.field private static final INITIATOR:S = 0x2s

.field private static final OBSERVER:S = 0x20s

.field private static final RESPONDER:S = 0x1s

.field public static final TAG:Ljava/lang/String; = "DEVICE_ROLE"

.field private static final UT_ANCHOR:S = 0x8s

.field private static final UT_SYNC_ANCHOR:S = 0x4s


# instance fields
.field private final deviceRole:S


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 27
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 28
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->getShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    iput-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .local v0, "description":Ljava/util/StringJoiner;
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, " Responder "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 38
    :cond_0
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v1, " Initiator "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 41
    :cond_1
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const-string v1, " UT-Sync-Anchor "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 44
    :cond_2
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    const-string v1, " UT-Anchor "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 47
    :cond_3
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    const-string v1, " Advertiser "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 50
    :cond_4
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    const-string v1, " Observer "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 53
    :cond_5
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    const-string v1, " DT-Anchor "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    :cond_6
    iget-short v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->deviceRole:S

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    const-string v1, " DT-Tag "

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 59
    :cond_7
    const-string v1, "DEVICE_ROLE"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/capsinfo/DeviceRole;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
