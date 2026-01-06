.class public Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;
    }
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getResultCode(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->NONE:Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    sget-object v0, Lcom/samsung/android/knox/appconfig/info/KeyInfo;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/EdmUtils;->getAPILevelForInternal()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/appconfig/info/KeyInfo$KEY;->getVersion()I

    move-result p0

    if-lt v0, p0, :cond_0

    sget p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;->ERROR_NONE:I

    return p0

    :cond_0
    sget p0, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsContract$Result;->ERROR_INVALID_KEY:I

    return p0
.end method
