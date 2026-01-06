.class abstract Lcom/android/internal/telephony/cat/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# direct methods
.method constructor greylist-max-r <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeLength(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1

    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    const/16 v0, 0x81

    .line 55
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-r format(Ljava/io/ByteArrayOutputStream;)V
.end method
