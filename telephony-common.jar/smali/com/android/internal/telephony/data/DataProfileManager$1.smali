.class Lcom/android/internal/telephony/data/DataProfileManager$1;
.super Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataProfileManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .locals 0

    .line 275
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$misResetPermanentNeededOperator(Lcom/android/internal/telephony/data/DataProfileManager;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string p2, "Init all DataProfiles Permanent fail due to DataEnabled changes to true"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$minitAllDataProfilesPermanentFail(Lcom/android/internal/telephony/data/DataProfileManager;)V

    :cond_0
    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$misResetPermanentNeededOperator(Lcom/android/internal/telephony/data/DataProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const-string v0, "Init all DataProfiles Permanent fail due to DataRoamingEnabled changes to true"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$1;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$minitAllDataProfilesPermanentFail(Lcom/android/internal/telephony/data/DataProfileManager;)V

    :cond_0
    return-void
.end method
