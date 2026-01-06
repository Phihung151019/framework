.class public Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;
.super Ljava/lang/Object;
.source "TimeZoneSuggesterImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;


# instance fields
.field private final blacklist mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

.field private final blacklist mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    iput-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    return-void
.end method

.method private blacklist countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .locals 2

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 350
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v0

    .line 349
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->countryUsesUtc(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method private blacklist findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 3

    .line 139
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTimeZoneForTestNetwork: nitzSignal="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 145
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    if-nez p0, :cond_0

    .line 148
    const-string p0, "findTimeZoneForTestNetwork: No zone found"

    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p1, 0x5

    .line 151
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 153
    invoke-virtual {p0}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 156
    :goto_0
    invoke-virtual {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneForTestNetwork: lookupResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 160
    :goto_1
    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 10

    .line 170
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTimeZoneFromCountryAndNitz: countryIsoCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nitzSignal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 178
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 187
    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NITZ signal looks bogus, use country code only, nitzSignal="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->addDebugInfo(Ljava/lang/String;)V

    return-object p0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 196
    invoke-virtual {p1, v1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    .line 199
    const-string p3, "ca"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, "NitzStateMachineImpl"

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p3

    const v4, -0x1b77400

    if-ne p3, v4, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v3, :cond_1

    .line 201
    const-string p1, "[NITZ] Exceptional case: Vancuver"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitz(Lcom/android/internal/telephony/NitzData;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    goto/16 :goto_1

    .line 203
    :cond_1
    const-string p3, "us"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v4

    const v5, -0xdbba00

    if-ne v4, v5, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getDstAdjustmentMillis()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2

    .line 205
    const-string p1, "[NITZ] Exceptional case: Puerto Rico"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    const-string p3, "pr"

    invoke-virtual {p1, v1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 208
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result p1

    const p3, -0x25c3f80

    if-ne p1, p3, :cond_3

    .line 209
    const-string p1, "[NITZ] Exceptional case: Samoa"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    const-string p3, "as"

    invoke-virtual {p1, v1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    goto :goto_1

    .line 212
    :cond_3
    const-string p1, "[NITZ] Exceptional case: Guam"

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    const-string p3, "gu"

    invoke-virtual {p1, v1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    .line 215
    const-string p3, "jm"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 224
    const-string v8, "tc"

    const-string v9, "ky"

    const-string v4, "bm"

    const-string v5, "ag"

    const-string v6, "kn"

    const-string v7, "dm"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_6

    .line 225
    aget-object p1, p3, v4

    .line 226
    iget-object v5, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {v5, v1, p1}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Landroid/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 232
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NITZ] New zone id: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 p3, 0x2

    if-eqz p1, :cond_9

    .line 237
    invoke-virtual {p1}, Landroid/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 p0, 0x3

    .line 238
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 240
    invoke-virtual {p1}, Landroid/timezone/CountryTimeZones$OffsetResult;->isOnlyMatch()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v3, p3

    .line 243
    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: lookupResult="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 250
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v1

    .line 250
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p0

    if-nez p0, :cond_a

    .line 254
    const-string p0, "findTimeZoneFromCountryAndNitz: lookupByCountry() country not recognized"

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 256
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 262
    :cond_a
    iget p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    if-eq p1, v3, :cond_c

    if-ne p1, p3, :cond_b

    goto :goto_3

    .line 275
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: country-only suggestion quality not high enough. countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 264
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 265
    invoke-virtual {v0, p3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 267
    invoke-virtual {v0, v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromCountryAndNitz: high quality country-only suggestion: countryResult="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 271
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 4

    .line 290
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTimeZoneFromNetworkCountryCode: whenMillis="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", countryIsoCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 299
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mTimeZoneLookupHelper:Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper;->lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 302
    iget-object v1, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    const/4 v1, 0x2

    .line 303
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 307
    iget v2, p1, Lcom/android/internal/telephony/nitz/TimeZoneLookupHelper$CountryResult;->quality:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    if-ne v2, v1, :cond_3

    :cond_2
    :goto_0
    move v1, v3

    goto :goto_1

    .line 317
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lookupResult.quality not recognized: countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", whenMillis="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", lookupResult="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 324
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->updateMultiTzAsSingleTzConcept(Ljava/lang/String;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Z

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findTimeZoneFromNetworkCountryCode: lookupResult="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    goto :goto_2

    .line 329
    :cond_4
    const-string p0, "findTimeZoneFromNetworkCountryCode: Country not recognized?"

    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 332
    :goto_2
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 292
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "countryIsoCode must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist isNitzSignalOffsetInfoBogus(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z
    .locals 2

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 344
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->countryUsesUtc(Ljava/lang/String;Lcom/android/internal/telephony/NitzData;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateMultiTzAsSingleTzConcept(Ljava/lang/String;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Z
    .locals 6

    .line 355
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    invoke-interface {p0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    .line 358
    const-string v0, "ua"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " is single timezone"

    const-string v2, "TIMEZONE : isMultiTZ - "

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "NitzStateMachineImpl"

    if-eqz v0, :cond_0

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p2, v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    return v3

    .line 364
    :cond_0
    const-string v0, "cl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p2, v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 367
    const-string p0, "America/Santiago"

    invoke-virtual {p2, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    return v3

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string v0, "OPT"

    const-string v1, "TPH"

    const-string v2, "MEO"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "pt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 377
    const-string p0, "TIMEZONE : isMultiTZ - Portugal, Regard as single timezone"

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p2, v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist getTimeZoneSuggestion(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 4

    if-eqz p3, :cond_0

    .line 63
    :try_start_0
    invoke-virtual {p3}, Lcom/android/internal/telephony/NitzSignal;->getNitzData()Lcom/android/internal/telephony/NitzData;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 67
    invoke-virtual {v0}, Lcom/android/internal/telephony/NitzData;->getEmulatorHostTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    const/4 v2, 0x4

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emulator time zone override: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-nez p3, :cond_2

    .line 80
    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=null"

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTimeZoneSuggestion: nitzSignal="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", countryIsoCode=null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p3, :cond_5

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    const-string p0, "getTimeZoneSuggestion: nitzSignal=null, countryIsoCode=\"\""

    invoke-static {p1, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->mDeviceState:Lcom/android/internal/telephony/NitzStateMachine$DeviceState;

    .line 96
    invoke-interface {v0}, Lcom/android/internal/telephony/NitzStateMachine$DeviceState;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromNetworkCountryCode(ILjava/lang/String;J)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneForTestNetwork(ILcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/nitz/TimeZoneSuggesterImpl;->findTimeZoneFromCountryAndNitz(ILjava/lang/String;Lcom/android/internal/telephony/NitzSignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 115
    :goto_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimeZoneSuggestion: Error during lookup:  countryIsoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", nitzSignal="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", e="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p1, p2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p1

    .line 126
    const-string p3, "NitzStateMachineImpl"

    invoke-static {p3, p2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
