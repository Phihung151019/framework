.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "MacPayloadEncryption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption$MacPayloadEncryptionMode;
    }
.end annotation


# static fields
.field public static final MAC_PAYLOAD_ENCRYPTION_DISABLE:B = 0x0t

.field public static final MAC_PAYLOAD_ENCRYPTION_ENABLE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "MAC_PAYLOAD_ENCRYPTION"


# instance fields
.field private final macPayloadEncryptMode:B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 25
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;->macPayloadEncryptMode:B

    .line 28
    return-void
.end method


# virtual methods
.method public getMacPayloadEncryptMode()B
    .locals 1

    .line 32
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;->macPayloadEncryptMode:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 37
    const-string v0, "INVALID"

    .line 38
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;->macPayloadEncryptMode:B

    if-nez v1, :cond_0

    .line 39
    const-string v0, "DISABLE (PLAIN TEXT)"

    goto :goto_0

    .line 40
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;->macPayloadEncryptMode:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 41
    const-string v0, "ENABLE (ENCRYPTED)"

    .line 43
    :cond_1
    :goto_0
    const-string v1, "MAC_PAYLOAD_ENCRYPTION"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
