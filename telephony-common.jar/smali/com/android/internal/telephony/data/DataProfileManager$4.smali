.class Lcom/android/internal/telephony/data/DataProfileManager$4;
.super Landroid/database/ContentObserver;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/os/Handler;)V
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

    .line 353
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager$4;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 357
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager$4;->this$0:Lcom/android/internal/telephony/data/DataProfileManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
