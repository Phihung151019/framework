.class public Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "AndroidSetCountryCodeResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse$AndroidStatusCode;
    }
.end annotation


# static fields
.field public static final STATUS_CODE_REGULATION_UWB_OFF:I = 0x53

.field public static final TAG:Ljava/lang/String; = "ANDROID_SET_COUNTRY_CODE_RSP"


# instance fields
.field public final status:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 26
    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

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

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;->status:I

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 33
    const-string v0, "INVALID"

    .line 34
    .local v0, "description":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;->status:I

    const/16 v2, 0x53

    if-ne v1, v2, :cond_0

    .line 35
    const-string v0, "STATUS_CODE_REGULATION_UWB_OFF"

    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v2, p0, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;->status:I

    invoke-virtual {v1, v2}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    iget v1, p0, Lcom/samsung/uwb/support/uci/rsp/android/AndroidSetCountryCodeResponse;->status:I

    int-to-byte v1, v1

    .line 40
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANDROID_SET_COUNTRY_CODE_RSP"

    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 39
    const-string v2, "%s, Status:0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "log":Ljava/lang/String;
    return-object v1
.end method
