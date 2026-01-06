.class public Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "ResultReportConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig$Value;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RESULT_REPORT_CONFIG"


# instance fields
.field public final config:B


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 22
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;->config:B

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;->config:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "TOF"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 33
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;->config:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "AOA azimuth"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 36
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;->config:B

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 37
    const-string v1, "AOA elevation"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 39
    :cond_2
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/ResultReportConfig;->config:B

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 40
    const-string v1, "AOA FOM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 42
    :cond_3
    const-string v1, "RESULT_REPORT_CONFIG"

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
