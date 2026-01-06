.class Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;
.super Ljava/lang/Object;
.source "SemSatellitePhone.java"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSatellitePhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidImportanceListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatellitePhone;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SemSatellitePhone;Lcom/android/internal/telephony/SemSatellitePhone-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;-><init>(Lcom/android/internal/telephony/SemSatellitePhone;)V

    return-void
.end method


# virtual methods
.method public whitelist onUidImportance(II)V
    .locals 1

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object p2, p0, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    iget-object p2, p2, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 590
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 592
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener$$ExternalSyntheticLambda0;

    const-string v0, "com.samsung.android.satellite.pointing.ui"

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 593
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatellitePhone$UidImportanceListener;->this$0:Lcom/android/internal/telephony/SemSatellitePhone;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSatellitePhone;->-$$Nest$mbackToTheCellularMode(Lcom/android/internal/telephony/SemSatellitePhone;I)V

    :cond_1
    :goto_0
    return-void
.end method
