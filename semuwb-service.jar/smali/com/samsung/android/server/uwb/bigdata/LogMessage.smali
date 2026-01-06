.class public Lcom/samsung/android/server/uwb/bigdata/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    }
.end annotation


# static fields
.field static final DBG:Z

.field public static final EXTRA_TYPE_LONG:I = 0x1

.field public static final EXTRA_TYPE_STRING:I = 0x2

.field public static final EXTRA_TYPE_STRING_ARRAY:I = 0x3

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_OBJ_SURVEY:I = 0x2


# instance fields
.field private mData:Lorg/json/JSONObject;

.field private mExtraType:I

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmData(Lcom/samsung/android/server/uwb/bigdata/LogMessage;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mData:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExtraType(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mExtraType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmType(Lcom/samsung/android/server/uwb/bigdata/LogMessage;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mType:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->DBG:Z

    .line 35
    const-string v0, "LogMessage"

    sput-object v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mData:Lorg/json/JSONObject;

    .line 155
    return-void
.end method

.method public static createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 2

    .line 162
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;-><init>(Lcom/samsung/android/server/uwb/bigdata/LogMessage-IA;)V

    return-object v0
.end method

.method public static createBuilder(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    .locals 2
    .param p0, "type"    # I

    .line 158
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;-><init>(ILcom/samsung/android/server/uwb/bigdata/LogMessage-IA;)V

    return-object v0
.end method


# virtual methods
.method public getExtraType()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mExtraType:I

    return v0
.end method

.method public getMessage()Lorg/json/JSONObject;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStringMessage()Ljava/lang/String;
    .locals 5

    .line 170
    const-string v0, ""

    .line 172
    .local v0, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mData:Lorg/json/JSONObject;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 176
    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->mType:I

    return v0
.end method
