.class public Lcom/android/internal/telephony/uicc/PortUtils;
.super Ljava/lang/Object;
.source "PortUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertFromHalPortIndex(IILcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)I
    .locals 0

    .line 73
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p3

    .line 75
    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepAMode()Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    return p1
.end method

.method public static blacklist convertToHalPortIndex(II)I
    .locals 1

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/PortUtils;->convertToHalPortIndex(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;I)I

    move-result p0

    return p0
.end method

.method public static blacklist convertToHalPortIndex(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;I)I
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepAMode()Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method
