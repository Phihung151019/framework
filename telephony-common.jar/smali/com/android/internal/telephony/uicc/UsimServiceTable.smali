.class public final Lcom/android/internal/telephony/uicc/UsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;,
        Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;,
        Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected blacklist getTag()Ljava/lang/String;
    .locals 0

    .line 274
    const-string p0, "UsimServiceTable"

    return-object p0
.end method

.method public blacklist getUSIMServiceTable()[B
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    return-object p0
.end method

.method protected blacklist getValues()[Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-static {}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;)Z
    .locals 0

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimExtService;->value()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result p0

    return p0
.end method

.method public greylist-max-r isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    .locals 0

    .line 262
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z
    .locals 0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isSSTActive(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z
    .locals 0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isSSTAvailable(I)Z

    move-result p0

    return p0
.end method
