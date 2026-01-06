.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimMipUppLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 725
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method blacklist checkLengthLegal(II)Z
    .locals 1

    if-ge p1, p2, :cond_0

    .line 733
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CSIM MIPUPP format error, length = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "expected length at least ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimRecords"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getEfName()Ljava/lang/String;
    .locals 0

    .line 728
    const-string p0, "EF_CSIM_MIPUPP"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 11

    .line 744
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 746
    array-length v0, p1

    const-string v1, "RuimRecords"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 747
    const-string p0, "MIPUPP read error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 751
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/BitwiseInputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;-><init>([B)V

    const/16 p1, 0x8

    .line 753
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    .line 757
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 761
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v4

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v2, :cond_3

    const/16 v4, 0xb

    .line 765
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 768
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v5, v3, -0xc

    :cond_3
    const/4 v3, 0x4

    .line 773
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 776
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v4

    add-int/lit8 v5, v5, -0x4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_10

    .line 781
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_3

    .line 784
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v9, v5, -0x4

    .line 787
    invoke-virtual {p0, v9, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_3

    .line 790
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v9

    add-int/lit8 v5, v5, -0xc

    if-nez v8, :cond_9

    shl-int/lit8 v2, v9, 0x3

    .line 795
    invoke-virtual {p0, v5, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_3

    .line 798
    :cond_7
    new-array v2, v9, [C

    :goto_1
    if-ge v6, v9, :cond_8

    .line 800
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 802
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmNai(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 803
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 804
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIPUPP Nai = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmNai(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    shl-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v8, 0x66

    .line 809
    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v8, v8, 0x65

    .line 812
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 813
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    sub-int/2addr v5, v9

    const/16 v9, 0x20

    if-ne v8, v2, :cond_c

    .line 817
    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    .line 820
    :cond_b
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    add-int/lit8 v5, v5, -0x20

    :cond_c
    const/4 v8, 0x5

    .line 825
    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_3

    .line 828
    :cond_d
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V

    .line 830
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/BitwiseInputStream;->read(I)I

    move-result v8

    add-int/lit8 v10, v5, -0x5

    if-ne v8, v2, :cond_f

    .line 834
    invoke-virtual {p0, v10, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMipUppLoaded;->checkLengthLegal(II)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_3

    .line 837
    :cond_e
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, -0x25

    goto :goto_2

    :cond_f
    move v5, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_3
    return-void

    .line 843
    :catch_0
    const-string p0, "MIPUPP read Exception error!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
