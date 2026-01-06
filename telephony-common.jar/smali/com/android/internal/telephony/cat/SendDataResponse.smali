.class Lcom/android/internal/telephony/cat/SendDataResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist emptySpaceInTxBuf:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 487
    iput p1, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 475
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 476
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    .line 477
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 478
    iget v0, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 479
    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    .line 481
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_1

    const/16 v0, 0xff

    .line 482
    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    .line 484
    :cond_1
    iget p0, p0, Lcom/android/internal/telephony/cat/SendDataResponse;->emptySpaceInTxBuf:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
