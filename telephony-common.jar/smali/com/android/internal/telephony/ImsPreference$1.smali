.class Lcom/android/internal/telephony/ImsPreference$1;
.super Landroid/database/ContentObserver;
.source "ImsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ImsPreference;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ImsPreference;Landroid/os/Handler;)V
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

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/ImsPreference$1;->this$0:Lcom/android/internal/telephony/ImsPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference$1;->this$0:Lcom/android/internal/telephony/ImsPreference;

    const-string p2, "ImsMnoName changed"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/ImsPreference;->-$$Nest$mlogd(Lcom/android/internal/telephony/ImsPreference;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/android/internal/telephony/ImsPreference$1;->this$0:Lcom/android/internal/telephony/ImsPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object p0, p0, Lcom/android/internal/telephony/ImsPreference$1;->this$0:Lcom/android/internal/telephony/ImsPreference;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
