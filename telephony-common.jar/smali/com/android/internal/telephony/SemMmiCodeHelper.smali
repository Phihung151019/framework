.class public Lcom/android/internal/telephony/SemMmiCodeHelper;
.super Ljava/lang/Object;
.source "SemMmiCodeHelper.java"


# static fields
.field private static final blacklist sBarringTypeToChinaResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sBarringTypeToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sForwardingTypeToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sServiceClassToResIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createServiceClassToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    .line 317
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createForwardingTypeToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    .line 359
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createBarringTypeToResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    .line 374
    invoke-static {}, Lcom/android/internal/telephony/SemMmiCodeHelper;->createBarringTypeToChinaResIdMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToChinaResIdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist barringTypeToString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    const-string v0, "HKG"

    const-string v1, "TPE"

    const-string v2, "CHN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToChinaResIdMap:Ljava/util/Map;

    .line 387
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 390
    :cond_0
    sget-object p2, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 395
    :cond_1
    const-string p0, " "

    return-object p0
.end method

.method public static blacklist checkBarringTypeToString(Landroid/content/Context;)V
    .locals 5

    .line 399
    const-string v0, "* checkBarringTypeToString"

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 400
    const-string v0, ""

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 401
    const-string v1, "* Expected Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 402
    const-string v1, "- SC_BAOC(33)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 403
    const-string v1, "- SC_BAOIC(331)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 404
    const-string v1, "- SC_BAOICxH(332)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 405
    const-string v1, "- SC_BAIC(35)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 406
    const-string v1, "- SC_BAICr(351)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 407
    const-string v1, "- SC_BA_ALL(330)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 408
    const-string v1, "- SC_BA_MO(333)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 409
    const-string v1, "- SC_BA_MT(353)"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 410
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 411
    const-string v1, "* Test Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 412
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sBarringTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- forwardingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/android/internal/telephony/SemMmiCodeHelper;->barringTypeToString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist checkForwardingTypeToString(Landroid/content/Context;)V
    .locals 5

    .line 339
    const-string v0, "* checkForwardingTypeToString"

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 340
    const-string v0, ""

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 341
    const-string v1, "* Expected Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 342
    const-string v1, "- SC_CF_All(002) = serviceModeAll"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 343
    const-string v1, "- SC_CFU(21) = serviceModeUnconditional"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 344
    const-string v1, "- SC_CFB(67) = serviceModeBusy"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 345
    const-string v1, "- SC_CFNR(62) = serviceModeNotReachable"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 346
    const-string v1, "- SC_CFNRy(61) = serviceModeNoReply"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 347
    const-string v1, "- SC_CF_All_Conditional(004) = serviceModeAllConditional"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 348
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 349
    const-string v1, "* Test Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 350
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- forwardingType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->forwardingTypeToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist checkServiceClassToString(Landroid/content/Context;)V
    .locals 6

    .line 288
    const-string v0, "* checkServiceClassToString"

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 289
    const-string v0, ""

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 290
    const-string v1, "* Expected Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 291
    const-string v1, "- VOICE(0x1) = classVoice"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 292
    const-string v1, "- DATA(0x2) = classData"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 293
    const-string v1, "- FAX(0x4) = classFAX"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 294
    const-string v1, "- SMS(0x8) = classSMS"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 295
    const-string v1, "- DATA_SYNC(0x10) = classDataSync"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 296
    const-string v1, "- DATA_ASYNC(0x20) = classDataAsync"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 297
    const-string v1, "- PACKET(0x40) = classPacket"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 298
    const-string v1, "- PAD(0x80) = classPad"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 299
    const-string v1, "- PAD+DATA_ASYNC(0xA0) = classAllAsync"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 300
    const-string v1, "- PACKET+DATA_ASYNC(0x60) = classAllSync"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 301
    const-string v1, "- SMS+FAX+VOICE(0xD) = classAllTele"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 302
    const-string v1, "- SMS+FAX(0xC) = classAllData"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 303
    const-string v1, "- FAX+VOICE(0x5) = classAllTelexSMS"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 304
    const-string v1, "- DATA_ASYNC+DATA_SYNC(0x30) = classAllAsyncSync"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 305
    const-string v1, "- DATA_SYNC+VOICE(0x11) = classAllGPRS"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 306
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 307
    const-string v1, "* Test Result"

    invoke-static {v1}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 308
    sget-object v1, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- serviceClass: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->serviceClassToString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist createBarringTypeToChinaResIdMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x104004d

    .line 377
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "330"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400de

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "333"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400dc

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "353"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createBarringTypeToResIdMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x10400de

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "33"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400df

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "331"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400e0

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "332"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400dc

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "35"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400dd

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "351"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400e1

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "330"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400e2

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "333"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x10400e3

    .line 369
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "353"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createForwardingTypeToResIdMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x1040ebb

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "002"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040ec0

    .line 321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040ebd

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "67"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040ebf

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "62"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040ebe

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "61"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x1040ebc

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "004"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final blacklist createServiceClassToResIdMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 264
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x40

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x80

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa0

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x60

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x30

    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x10402c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forwardingTypeToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sForwardingTypeToResIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 335
    :cond_0
    const-string p0, " "

    return-object p0
.end method

.method public static blacklist getUtResponseLogForImsPhone(ILandroid/os/AsyncResult;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/AsyncResult;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0x56

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eq p0, v0, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    move-object v0, v3

    goto :goto_0

    .line 125
    :pswitch_0
    const-string v0, "queryCLIR(EVENT_GET_CLIR_DONE)"

    goto :goto_0

    .line 124
    :pswitch_1
    const-string v0, "updateCLIR(EVENT_SET_CLIR_DONE)"

    goto :goto_0

    .line 128
    :pswitch_2
    const-string v0, "queryCallWaiting(EVENT_GET_CALL_WAITING_DONE)"

    goto :goto_0

    .line 127
    :pswitch_3
    const-string v0, "updateCallWaiting(EVENT_SET_CALL_WAITING_DONE)"

    goto :goto_0

    .line 123
    :pswitch_4
    const-string v0, "queryCallBarring(EVENT_GET_CALL_BARRING_DONE)"

    goto :goto_0

    .line 122
    :pswitch_5
    const-string v0, "updateCallBarring(EVENT_SET_CALL_BARRING_DONE)"

    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "queryCLIP(EVENT_GET_CLIP_DONE)"

    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "queryCallForward(EVENT_GET_CALL_FORWARD_DONE)"

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "updateCallForward(EVENT_SET_CALL_FORWARD_DONE)"

    .line 132
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 136
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_4

    .line 140
    :try_start_0
    const-string p0, "No AsyncResult"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    .line 141
    :cond_4
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 143
    :cond_5
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_9

    .line 144
    const-string v4, "]"

    const-string v5, "["

    const/4 v6, 0x0

    if-eq p0, v2, :cond_8

    const/16 v2, 0x4d

    if-eq p0, v2, :cond_7

    const/16 v2, 0x4f

    if-eq p0, v2, :cond_7

    const/16 v2, 0x51

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    goto :goto_4

    .line 160
    :cond_6
    :try_start_1
    check-cast p1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 147
    :cond_7
    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    .line 148
    array-length p0, p1

    :goto_1
    if-ge v6, p0, :cond_9

    aget-object v1, p1, v6

    .line 149
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_8
    check-cast p1, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 154
    array-length p0, p1

    :goto_2
    if-ge v6, p0, :cond_9

    aget-object v1, p1, v6

    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 171
    :goto_3
    const-string p1, "Parsing error: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    :cond_9
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getUtResponseLogForImsPhoneMmiCode(ILjava/lang/String;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    const-string v0, "77"

    const-string v2, "76"

    const-string v3, "157"

    const-string v4, "156"

    const/16 v5, 0xa

    const/4 v6, 0x7

    if-eqz p0, :cond_5

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_2
    const-string p1, "queryCallBarring(EVENT_QUERY_ICB_COMPLETE)"

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "queryCOLP(EVENT_SUPP_SVC_QUERY_COMPLETE)"

    goto :goto_2

    .line 196
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "queryCOLR(EVENT_SUPP_SVC_QUERY_COMPLETE)"

    goto :goto_2

    .line 189
    :cond_5
    const-string v7, "30"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string p1, "updateCLIP(EVENT_SET_COMPLETE)"

    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "updateCOLP(EVENT_SET_COMPLETE)"

    goto :goto_2

    .line 191
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "updateCOLR(EVENT_SET_COMPLETE)"

    goto :goto_2

    .line 192
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    move-object p1, v1

    goto :goto_2

    :cond_a
    :goto_1
    const-string p1, "updateCallBarring(EVENT_SET_COMPLETE)"

    .line 205
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object v1

    .line 209
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    :try_start_0
    check-cast p2, Landroid/os/AsyncResult;

    if-nez p2, :cond_c

    .line 215
    const-string p0, "No AsyncResult"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    .line 216
    :cond_c
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 218
    :cond_d
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_11

    .line 219
    const-string v2, "]"

    const-string v3, "["

    if-eq p0, v6, :cond_f

    if-eq p0, v5, :cond_e

    goto :goto_7

    .line 233
    :cond_e
    :try_start_1
    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 235
    :catch_1
    :try_start_2
    iget-object p0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, [Landroid/telephony/ims/ImsSsInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 237
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/ImsSsInfo;

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 221
    :cond_f
    instance-of p0, v1, Landroid/telephony/ims/ImsSsInfo;

    if-eqz p0, :cond_10

    .line 222
    check-cast v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 224
    :cond_10
    check-cast v1, [I

    .line 225
    array-length p0, v1

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p0, :cond_11

    aget v4, v1, p2

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 247
    :goto_6
    const-string p2, "Parsing error: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    :cond_11
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist hasVideoCallForwarding(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist hasVoiceCallForwarding(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isKorExceptionCase(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;Z)Z
    .locals 2

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "KOR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result p1

    if-nez p1, :cond_2

    .line 583
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    .line 588
    const-string v0, "kr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    .line 590
    :cond_0
    const-string p0, "45006"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "45008"

    .line 591
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static blacklist isManufacturerDefined(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v1, "KOR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "*"

    .line 574
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist isNotShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 526
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getNetworkCountryIso(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p1

    .line 527
    const-string v1, "tm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string p1, "01"

    .line 528
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "02"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "03"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "04"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v1

    .line 534
    :cond_2
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "00"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_4

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x23

    if-eq p1, v2, :cond_4

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static blacklist isServiceCodePotentialUssdCode(Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 549
    :cond_0
    const-string v1, "156"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v3, "65510"

    const-string v4, "62001"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 555
    :cond_1
    const-string v1, "22"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    const-string p1, "24201"

    const-string v1, "23003"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static blacklist korErrorCodeToResId(Ljava/lang/String;)I
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "korErrorCodeToResId - errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemMmiCodeHelper;->log(Ljava/lang/String;)V

    .line 454
    const-string v0, "37"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x10400fc

    return p0

    .line 456
    :cond_0
    const-string v0, "38"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x10400f9

    return p0

    .line 458
    :cond_1
    const-string v0, "43"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x10400fa

    return p0

    .line 460
    :cond_2
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x104010a

    return p0

    .line 462
    :cond_3
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x10400ee

    return p0

    .line 464
    :cond_4
    const-string v0, "11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x1040107

    return p0

    .line 466
    :cond_5
    const-string v0, "14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p0, 0x10400ef

    return p0

    .line 468
    :cond_6
    const-string v0, "16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p0, 0x10400f4

    return p0

    .line 470
    :cond_7
    const-string v0, "17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x1040100

    return p0

    .line 472
    :cond_8
    const-string v0, "18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x1040102

    return p0

    .line 474
    :cond_9
    const-string v0, "19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const p0, 0x1040103

    return p0

    .line 476
    :cond_a
    const-string v0, "20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x1040101

    return p0

    .line 478
    :cond_b
    const-string v0, "34"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const p0, 0x1040106

    return p0

    .line 480
    :cond_c
    const-string v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const p0, 0x10400f0

    return p0

    .line 482
    :cond_d
    const-string v0, "36"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const p0, 0x1040108

    return p0

    .line 484
    :cond_e
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const p0, 0x10400f5

    return p0

    .line 486
    :cond_f
    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const p0, 0x10400f3

    return p0

    .line 488
    :cond_10
    const-string v0, "27"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const p0, 0x10400ed

    return p0

    .line 490
    :cond_11
    const-string v0, "29"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const p0, 0x1040104

    return p0

    .line 492
    :cond_12
    const-string v0, "30"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const p0, 0x10400f7

    return p0

    .line 494
    :cond_13
    const-string v0, "54"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const p0, 0x10400fb

    return p0

    .line 496
    :cond_14
    const-string v0, "71"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const p0, 0x1040109

    return p0

    .line 498
    :cond_15
    const-string v0, "72"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const p0, 0x104010b

    return p0

    .line 500
    :cond_16
    const-string v0, "121"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const p0, 0x10400fe

    return p0

    .line 502
    :cond_17
    const-string v0, "122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const p0, 0x10400fd

    return p0

    .line 504
    :cond_18
    const-string v0, "123"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const p0, 0x10400f1

    return p0

    .line 506
    :cond_19
    const-string v0, "124"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const p0, 0x1040105

    return p0

    .line 508
    :cond_1a
    const-string v0, "125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const p0, 0x10400f6

    return p0

    .line 510
    :cond_1b
    const-string v0, "126"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const p0, 0x10400f8

    return p0

    .line 512
    :cond_1c
    const-string v0, "127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const p0, 0x10400ff

    return p0

    :cond_1d
    const p0, 0x10400f2

    return p0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1

    .line 599
    const-string v0, "SemMmiCodeHelper"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist serviceClassToString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 280
    sget-object v0, Lcom/android/internal/telephony/SemMmiCodeHelper;->sServiceClassToResIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x10402c4

    .line 284
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
