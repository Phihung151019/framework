.class public Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
.super Ljava/lang/Object;
.source "KnoxAnalyticsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_NAME_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_Pid_PackageNameFlag"

.field public static final TAG:Ljava/lang/String;

.field public static final USER_TYPE_FLAG_PROPERTY_NAME:Ljava/lang/String; = "ReservedKey_UserId_UserTypeFlag"


# instance fields
.field public count:I

.field public event:Ljava/lang/String;

.field public eventId:J

.field public feature:Ljava/lang/String;

.field public payload:Landroid/os/Bundle;

.field public schemaVersion:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->TAG:Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->feature:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->schemaVersion:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->event:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 218
    iput p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->feature:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->schemaVersion:I

    .line 44
    iput-object p3, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->event:Ljava/lang/String;

    .line 45
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->generateTimestamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    return-void
.end method

.method public static convertToKnoxAnalyticsSDK(Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .locals 4

    .line 250
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getFeature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getSchemaVersion()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getEvent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getEventId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/knox/knoxanalyticsproxy/KnoxAnalyticsData;->getCount()I

    move-result p0

    iput p0, v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final generateTimestamp()J
    .locals 4

    .line 52
    const-string p0, "UTC"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCount()I
    .locals 0

    .line 204
    iget p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    return p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->event:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()J
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    return-wide v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->feature:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Landroid/os/Bundle;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSchemaVersion()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->schemaVersion:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    return-wide v0
.end method

.method public incrementCount()V
    .locals 1

    .line 169
    iget v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    return-void
.end method

.method public setPackageNameProperty(I)V
    .locals 1

    .line 164
    const-string v0, "ReservedKey_Pid_PackageNameFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;F)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setUserTypeProperty(I)V
    .locals 1

    .line 152
    const-string v0, "ReservedKey_UserId_UserTypeFlag"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "schemaVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "payload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 223
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->feature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget p2, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->schemaVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->event:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->payload:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 227
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-wide v0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget p0, p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->count:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
