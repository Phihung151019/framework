.class Lcom/samsung/android/knox/license/EnterpriseLicenseManager$2;
.super Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic greylist val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/license/EnterpriseLicenseManager;Lcom/samsung/android/knox/license/LicenseResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p2, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$2;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/license/ILicenseResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/EnterpriseLicenseManager$2;->val$callback:Lcom/samsung/android/knox/license/LicenseResultCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/license/LicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    return-void
.end method
