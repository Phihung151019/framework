.class public Lcom/samsung/android/server/uwb/bigdata/item/Item;
.super Ljava/lang/Object;
.source "Item.java"


# static fields
.field public static final RANGING_TIME_RESET:I = -0x1


# instance fields
.field private mJsonParam:Lorg/json/JSONObject;

.field private mPackageName:Ljava/lang/String;

.field private mRangingStartTime:J

.field private final mSessionID:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "sessionID"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mRangingStartTime:J

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mJsonParam:Lorg/json/JSONObject;

    .line 13
    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mSessionID:I

    .line 14
    return-void
.end method


# virtual methods
.method public getJsonParam()Lorg/json/JSONObject;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mJsonParam:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRangingStartTime()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mRangingStartTime:J

    return-wide v0
.end method

.method public getSessionID()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mSessionID:I

    return v0
.end method

.method public setJsonParam(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonParam"    # Lorg/json/JSONObject;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mJsonParam:Lorg/json/JSONObject;

    .line 43
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mPackageName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setRangingStartTime(J)V
    .locals 0
    .param p1, "rangingTime"    # J

    .line 29
    iput-wide p1, p0, Lcom/samsung/android/server/uwb/bigdata/item/Item;->mRangingStartTime:J

    .line 30
    return-void
.end method
