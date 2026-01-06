.class Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;
.super Landroid/telephony/TelephonyCallback;
.source "DataProfileManager.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowedNetworkTypesListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2223
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Lcom/android/internal/telephony/data/DataProfileManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onAllowedNetworkTypesChanged(IJ)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2231
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fgetmAllowedNetworkType(Lcom/android/internal/telephony/data/DataProfileManager;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_1

    .line 2232
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$fputmAllowedNetworkType(Lcom/android/internal/telephony/data/DataProfileManager;J)V

    .line 2233
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$AllowedNetworkTypesListener;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateApnForLteRoaming()Z

    :cond_1
    :goto_0
    return-void
.end method
