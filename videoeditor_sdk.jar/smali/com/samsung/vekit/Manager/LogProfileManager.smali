.class public Lcom/samsung/vekit/Manager/LogProfileManager;
.super Lcom/samsung/vekit/Manager/Manager;
.source "LogProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/vekit/Manager/Manager<",
        "Lcom/samsung/vekit/Common/Object/LogProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Common/VEContext;)V
    .locals 1
    .param p1, "context"    # Lcom/samsung/vekit/Common/VEContext;

    .line 13
    sget-object v0, Lcom/samsung/vekit/Common/Type/ManagerType;->LOG_PROFILE:Lcom/samsung/vekit/Common/Type/ManagerType;

    invoke-direct {p0, p1, v0}, Lcom/samsung/vekit/Manager/Manager;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ManagerType;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Manager/LogProfileManager;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/LogProfile;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/LogProfileManager;->generateUniqueId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .local v0, "uniqueId":I
    nop

    .line 26
    new-instance v1, Lcom/samsung/vekit/Common/Object/LogProfile;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LogProfileManager;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/samsung/vekit/Common/Object/LogProfile;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, "logProfile":Lcom/samsung/vekit/Common/Object/LogProfile;
    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Manager/LogProfileManager;->add(Ljava/lang/Object;)V

    .line 31
    return-object v1

    .line 21
    .end local v0    # "uniqueId":I
    .end local v1    # "logProfile":Lcom/samsung/vekit/Common/Object/LogProfile;
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/vekit/Manager/LogProfileManager;->TAG:Ljava/lang/String;

    const-string v2, "create: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    const/4 v1, 0x0

    return-object v1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/vekit/Common/Object/LogProfile;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sdrPath"    # Ljava/lang/String;
    .param p3, "hdrPath"    # Ljava/lang/String;
    .param p4, "hlgPath"    # Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Manager/LogProfileManager;->generateUniqueId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 41
    .local v3, "uniqueId":I
    nop

    .line 43
    new-instance v1, Lcom/samsung/vekit/Common/Object/LogProfile;

    iget-object v2, p0, Lcom/samsung/vekit/Manager/LogProfileManager;->context:Lcom/samsung/vekit/Common/VEContext;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "sdrPath":Ljava/lang/String;
    .end local p3    # "hdrPath":Ljava/lang/String;
    .end local p4    # "hlgPath":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v5, "sdrPath":Ljava/lang/String;
    .local v6, "hdrPath":Ljava/lang/String;
    .local v7, "hlgPath":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/samsung/vekit/Common/Object/LogProfile;-><init>(Lcom/samsung/vekit/Common/VEContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v1, "logProfile":Lcom/samsung/vekit/Common/Object/LogProfile;
    invoke-virtual {p0, v1}, Lcom/samsung/vekit/Manager/LogProfileManager;->add(Ljava/lang/Object;)V

    .line 48
    return-object v1

    .line 38
    .end local v1    # "logProfile":Lcom/samsung/vekit/Common/Object/LogProfile;
    .end local v3    # "uniqueId":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sdrPath":Ljava/lang/String;
    .end local v6    # "hdrPath":Ljava/lang/String;
    .end local v7    # "hlgPath":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "sdrPath":Ljava/lang/String;
    .restart local p3    # "hdrPath":Ljava/lang/String;
    .restart local p4    # "hlgPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object p1, v0

    .line 39
    .end local p2    # "sdrPath":Ljava/lang/String;
    .end local p3    # "hdrPath":Ljava/lang/String;
    .end local p4    # "hlgPath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "sdrPath":Ljava/lang/String;
    .restart local v6    # "hdrPath":Ljava/lang/String;
    .restart local v7    # "hlgPath":Ljava/lang/String;
    .local p1, "e":Ljava/lang/Exception;
    iget-object p2, p0, Lcom/samsung/vekit/Manager/LogProfileManager;->TAG:Ljava/lang/String;

    const-string p3, "create: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    const/4 p2, 0x0

    return-object p2
.end method
