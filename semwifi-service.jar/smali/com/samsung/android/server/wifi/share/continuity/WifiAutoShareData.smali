.class public abstract Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$WifiAutoShareDataUnsupported;,
        Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData$Factory;
    }
.end annotation


# static fields
.field static final JSON_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field protected final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->type:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/lang/Object;
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->getType()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public abstract getTargetDevices()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/share/continuity/WifiAutoShareData;->type:I

    .line 2
    .line 3
    return p0
.end method
