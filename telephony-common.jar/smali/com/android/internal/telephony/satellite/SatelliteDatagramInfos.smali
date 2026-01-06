.class public Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;
.super Ljava/lang/Object;
.source "SatelliteDatagramInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    }
.end annotation


# static fields
.field public static final blacklist DIRECTION_INCOMING:I = 0x2

.field public static final blacklist DIRECTION_OUTGOING:I = 0x1

.field public static final blacklist DIRECTION_UNKNOWN:I


# instance fields
.field private blacklist mDatagramDirection:I

.field private blacklist mDatagramSizeBytes:I

.field private blacklist mDatagramTransferTimeMillis:J

.field private blacklist mDatagramType:I

.field private blacklist mResultCode:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->-$$Nest$fgetmDatagramDirection(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->-$$Nest$fgetmDatagramType(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramType:I

    .line 34
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->-$$Nest$fgetmResultCode(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mResultCode:I

    .line 35
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->-$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramSizeBytes:I

    .line 36
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->-$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramTransferTimeMillis:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;-><init>(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist sendBigDataForSatelliteDatagram(Landroid/content/Context;)V
    .locals 3

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "feature"

    const/16 v2, 0x2002

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v1, "bigdata_info"

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SatelliteDatagramInfos"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    const-string v1, "{\"DIRECTION\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "\",\"RESULT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "\",\"SIZE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "\",\"TIME\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramTransferTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "\",\"TYPE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->mDatagramType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
