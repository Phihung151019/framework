.class public Lcom/samsung/android/knox/analytics/KnoxAnalyticsData$1;
.super Ljava/lang/Object;
.source "KnoxAnalyticsData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .locals 0

    .line 240
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .locals 0

    .line 245
    new-array p0, p1, [Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData$1;->newArray(I)[Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p0

    return-object p0
.end method
