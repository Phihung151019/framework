.class public final Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;
.super Ljava/lang/Object;
.source "SemTelephonyProps.java"


# direct methods
.method public static synthetic blacklist $r8$lambda$RI5tINF7JiBAB4ZWfWt0ugdaS58(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 201
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$YrVeFbfuDl7y4E9bwfIv-zP9DxI(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 242
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hGDQlYfa_1xhqTHM-iHqnWIuHzY(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 192
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$jNL0yAJhFmAu7I6iaM6dqJ4QPtc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 278
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mF8UY6SfDt6tJmJH_8EycMG2pPc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 233
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qfb2g3NfOTx2EiS7Bcv67SorXWk(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 260
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wKvHE0MhOtAgNc4tY0qV6reOqRA(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 287
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist current_plmn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 120
    const-string v0, "([\\\\,])"

    const-string v1, "\\\\$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist formatList(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    const-string v1, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist in_ecm_mode(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 489
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.vendor.inecmmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist limited_lte_reject()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    const-string v0, "ril.data.limited_lte_reject"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist limited_lte_reject(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 237
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.data.limited_lte_reject"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist lte_voice_support()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 191
    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist lte_voice_support(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 196
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist network_reject_cause()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    const-string v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist nitz_time(Ljava/lang/Long;)V
    .locals 1

    if-nez p0, :cond_0

    .line 832
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "gsm.nitz.time"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist nitz_time_elapsed_time(Ljava/lang/Long;)V
    .locals 1

    if-nez p0, :cond_0

    .line 841
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "gsm.nitz.time-elapsedtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist preconfig_reset()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 637
    const-string v0, "persist.radio.preconfig_reset"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist preconfig_reset(Ljava/lang/Integer;)V
    .locals 1

    if-nez p0, :cond_0

    .line 642
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "persist.radio.preconfig_reset"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist reject_rat()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    const-string v0, "ril.reject.rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sim_mobility()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    const-string v0, "ril.sim.mobility"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist sim_mobility(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 246
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.sim.mobility"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist ss_error_code()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    const-string v0, "ril.ss.errorcode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ss_error_code(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 205
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.ss.errorcode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist sys_timezone()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 899
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist telephony_default_networkmode_automatic()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 182
    const-string v0, "ro.ril.telephony.default_networkmode_automatic"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist telephony_default_networkmode_automatic(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p0, :cond_0

    .line 187
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ro.ril.telephony.default_networkmode_automatic"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist test_emer_num()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    const-string v0, "persist.radio.test_emer_num"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tiantong_phone_id()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 944
    const-string v0, "ril.tiantong.phone.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tiantong_phone_id(Ljava/lang/Integer;)V
    .locals 1

    if-nez p0, :cond_0

    .line 949
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "ril.tiantong.phone.id"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 22
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 25
    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 28
    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 87
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 93
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    .line 99
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static blacklist tryParseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
