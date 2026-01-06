.class public Lcom/samsung/android/knox/sdp/core/SdpException;
.super Ljava/lang/Exception;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# instance fields
.field private greylist mErrorCode:I

.field private greylist mTimeout:I


# direct methods
.method public constructor greylist <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method public constructor greylist <init>(II)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/sdp/SdpErrno;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/sdp/core/SdpException;->classify(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    iput p2, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return-void
.end method

.method private static greylist classify(I)I
    .locals 1

    const/16 v0, -0x63

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return p0

    :cond_0
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mErrorCode:I

    return p0
.end method

.method public greylist getTimeout()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/sdp/core/SdpException;->mTimeout:I

    return p0
.end method
