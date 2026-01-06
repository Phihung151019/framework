.class Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;
.super Landroid/database/ContentObserver;
.source "SmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSettingObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsConfig;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SmsConfig;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    .line 255
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    iget-object p1, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object p0, p0, Lcom/android/internal/telephony/SmsConfig$ImsSettingObserver;->this$0:Lcom/android/internal/telephony/SmsConfig;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
