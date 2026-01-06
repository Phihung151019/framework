.class Lcom/android/internal/telephony/data/DataProfileManager$3;
.super Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V
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

    .line 346
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$3;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onCarrierConfigChanged()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$3;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->-$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataProfileManager;)V

    return-void
.end method
