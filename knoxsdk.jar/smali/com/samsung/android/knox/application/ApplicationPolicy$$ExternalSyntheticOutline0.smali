.class public final synthetic Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# direct methods
.method public static greylist m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    return-object p0
.end method
