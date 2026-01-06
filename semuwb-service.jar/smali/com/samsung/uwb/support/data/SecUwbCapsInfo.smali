.class public Lcom/samsung/uwb/support/data/SecUwbCapsInfo;
.super Ljava/lang/Object;
.source "SecUwbCapsInfo.java"


# instance fields
.field private final tlvParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field

.field private final uwbCapsInfo:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "payload"    # [B

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->uwbCapsInfo:[B

    .line 18
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->uwbCapsInfo:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->uwbCapsInfo:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/data/param/capsinfo/CapsInfoParameter;->parse([B)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->tlvParams:Ljava/util/HashMap;

    .line 20
    return-void
.end method


# virtual methods
.method public getTlvParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->tlvParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUwbCapsInfo()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->uwbCapsInfo:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/SecUwbCapsInfo;->tlvParams:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/TlvParam;

    .line 34
    .local v2, "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 35
    .end local v2    # "data":Lcom/samsung/uwb/support/data/param/TlvParam;
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
