.class public Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "ApplicationDataEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "APPLICATION_DATA_ENDPOINT"


# instance fields
.field public non_seConfig:I

.field public seConfig:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 21
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 23
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 24
    .local v1, "config":B
    and-int/lit8 v2, v1, 0xf

    iput v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->non_seConfig:I

    .line 25
    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->seConfig:I

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 31
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->non_seConfig:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 32
    const-string v1, "Non-secure endpoint Configuration : Host"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 33
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->non_seConfig:I

    if-ne v1, v2, :cond_1

    .line 34
    const-string v1, "Non-secure endpoint Configuration : Secure Component"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->seConfig:I

    if-nez v1, :cond_2

    .line 38
    const-string v1, "secure endpoint Configuration : Host"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 39
    :cond_2
    iget v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ApplicationDataEndpoint;->seConfig:I

    if-ne v1, v2, :cond_3

    .line 40
    const-string v1, "secure endpoint Configuration : Secure Component"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    :cond_3
    :goto_1
    const-string v1, "APPLICATION_DATA_ENDPOINT"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
