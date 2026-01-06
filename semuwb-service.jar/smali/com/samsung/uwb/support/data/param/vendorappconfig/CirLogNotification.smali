.class public Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "CirLogNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification$CirLogNotificationMode;
    }
.end annotation


# static fields
.field public static final CIR_LOG_NTF_DISABLE:B = 0x0t

.field public static final CIR_LOG_NTF_ENABLE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "CIR_LOG_NOTIFICATION"


# instance fields
.field private final cirLogNtfMode:B


# direct methods
.method protected constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 26
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;->cirLogNtfMode:B

    .line 29
    return-void
.end method


# virtual methods
.method public getCirLogNtfMode()B
    .locals 1

    .line 33
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;->cirLogNtfMode:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    const-string v0, "INVALID"

    .line 39
    .local v0, "description":Ljava/lang/String;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;->cirLogNtfMode:B

    if-nez v1, :cond_0

    .line 40
    const-string v0, "DISABLE"

    goto :goto_0

    .line 41
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;->cirLogNtfMode:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 42
    const-string v0, "ENABLE"

    .line 44
    :cond_1
    :goto_0
    const-string v1, "CIR_LOG_NOTIFICATION"

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
