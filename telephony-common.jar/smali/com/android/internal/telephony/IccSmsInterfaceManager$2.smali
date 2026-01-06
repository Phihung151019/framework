.class Lcom/android/internal/telephony/IccSmsInterfaceManager$2;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccSmsInterfaceManager$PhoneFactoryProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 263
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method
