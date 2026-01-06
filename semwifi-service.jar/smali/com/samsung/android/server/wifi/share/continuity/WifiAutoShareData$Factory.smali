.class public Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


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

.method public static create(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiProfileShareData;-><init>(Lorg/json/JSONObject;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method
