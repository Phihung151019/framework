.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback$EapErrorCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EapErrorCode"
.end annotation


# static fields
.field public static final SIM_GENERAL_FAILURE_AFTER_AUTH:I = 0x0

.field public static final SIM_GENERAL_FAILURE_BEFORE_AUTH:I = 0x4000

.field public static final SIM_NOT_SUBSCRIBED:I = 0x407

.field public static final SIM_TEMPORARILY_DENIED:I = 0x402

.field public static final SIM_VENDOR_SPECIFIC_EXPIRED_CERT:I = 0x4001


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IfaceType$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit16 v1, p0, 0x402

    .line 8
    .line 9
    const/16 v2, 0x402

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const-string v1, "SIM_TEMPORARILY_DENIED"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    and-int/lit16 v1, p0, 0x407

    .line 21
    .line 22
    const/16 v3, 0x407

    .line 23
    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    const-string v1, "SIM_NOT_SUBSCRIBED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move v2, v3

    .line 32
    :cond_1
    and-int/lit16 v1, p0, 0x4000

    .line 33
    .line 34
    const/16 v3, 0x4000

    .line 35
    .line 36
    if-ne v1, v3, :cond_2

    .line 37
    .line 38
    const-string v1, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    or-int/lit16 v2, v2, 0x4000

    .line 44
    .line 45
    :cond_2
    and-int/lit16 v1, p0, 0x4001

    .line 46
    .line 47
    const/16 v3, 0x4001

    .line 48
    .line 49
    if-ne v1, v3, :cond_3

    .line 50
    .line 51
    const-string v1, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    or-int/lit16 v2, v2, 0x4001

    .line 57
    .line 58
    :cond_3
    if-eq p0, v2, :cond_4

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "0x"

    .line 63
    .line 64
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    not-int v2, v2

    .line 68
    and-int/2addr p0, v2

    .line 69
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    const-string p0, " | "

    .line 73
    .line 74
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "SIM_GENERAL_FAILURE_AFTER_AUTH"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 v0, 0x402

    .line 7
    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "SIM_TEMPORARILY_DENIED"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/16 v0, 0x407

    .line 14
    .line 15
    if-ne p0, v0, :cond_2

    .line 16
    .line 17
    const-string p0, "SIM_NOT_SUBSCRIBED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const/16 v0, 0x4000

    .line 21
    .line 22
    if-ne p0, v0, :cond_3

    .line 23
    .line 24
    const-string p0, "SIM_GENERAL_FAILURE_BEFORE_AUTH"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const/16 v0, 0x4001

    .line 28
    .line 29
    if-ne p0, v0, :cond_4

    .line 30
    .line 31
    const-string p0, "SIM_VENDOR_SPECIFIC_EXPIRED_CERT"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "0x"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
