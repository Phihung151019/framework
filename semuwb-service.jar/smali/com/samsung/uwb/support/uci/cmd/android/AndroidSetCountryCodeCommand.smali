.class public Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "AndroidSetCountryCodeCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ANDROID_SET_COUNTRY_CODE_CMD"


# instance fields
.field public final countryCode:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "payload"    # [B

    .line 16
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, v0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;->countryCode:[B

    .line 20
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 22
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;->countryCode:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;->countryCode:[B

    .line 28
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/uwb/support/uci/cmd/android/AndroidSetCountryCodeCommand;->countryCode:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "ANDROID_SET_COUNTRY_CODE_CMD"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 27
    const-string v1, "%s, CountryCode=0x%s(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
