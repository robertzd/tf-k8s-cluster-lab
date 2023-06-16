
resource "proxmox_vm_qemu" "k8s-m-01" {

    # VM General Settings
    target_node = "prox02"
    vmid = "331"
    name = "k8s-m-01"
    desc = "Kubernetes Master Server #1"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = false
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.80/24,gw=172.16.16.1"
}

resource "proxmox_vm_qemu" "k8s-m-02" {

    # VM General Settings
    target_node = "prox02"
    vmid = "332"
    name = "k8s-m-02"
    desc = "Kubernetes Master Server #2"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = true
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.81/24,gw=172.16.16.1"
}

resource "proxmox_vm_qemu" "k8s-m-03" {

    # VM General Settings
    target_node = "prox02"
    vmid = "333"
    name = "k8s-m-03"
    desc = "Kubernetes Master Server #3"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = true
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.82/24,gw=172.16.16.1"
}
resource "proxmox_vm_qemu" "k8s-w-01" {

    # VM General Settings
    target_node = "prox02"
    vmid = "334"
    name = "k8s-w-01"
    desc = "Kubernetes Worker #1"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = true
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.83/24,gw=172.16.16.1"
}

resource "proxmox_vm_qemu" "k8s-w-02" {

    # VM General Settings
    target_node = "prox02"
    vmid = "335"
    name = "k8s-w-02"
    desc = "Kubernetes Worker #2"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = true
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.84/24,gw=172.16.16.1"
}

resource "proxmox_vm_qemu" "k8s-w-03" {

    # VM General Settings
    target_node = "prox02"
    vmid = "336"
    name = "k8s-w-03"
    desc = "Kubernetes Worker #3"
    onboot = false
    clone = "ubuntu-2004-cloudinit-template-prox02"
    full_clone = true
    agent = 1
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 4096
    ciuser = "robert"
    sshkeys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC2Up+WDePLSjiET3Ma3OcM9TOlMJE/3JFgt1YtCLUjYd2W+m926FUauZgYj3yiyktroXnk1b5FH/e+x3796RsLIuWtq1f14Knl6RsRgxBWRWjCdDLC1WHNhu+VIdDrNUWTxb/HoN1V5oBYs+K68fVrruCSKLclvuFNCk587pC/+fb5jhM6KkTgxgcOBC2FZ2PUuLUiOgkAX1inByIQNHzXDwTh2sStrsTdDbj+5cxzfl+luV0R/+jN9Fa/GlUvNU99mUCtFQ5VvDClYpPKzI3dh6NvC3srP6CnxaGnj2yq0gU1Q2EAR+aoIkks4J6uIl3fBid5tIoKgvmZxJg6uP8hFHe86Ob9BNm1J/dmIQNRY3a9IGTMS4EnBS+4EpxFzq3QZ7Fn7R3bArqr7o/FHTEYZoBRnZK1l5DnD0cjzAI6jzD2RDy5Eu87/YnNIOFpjU39VTJUHMS6D8WlUO0pcKh96Om5/h3LxgY7anZMmsoF3qQJVEvtgAdSa4/tmo+Guaxq8nrAP+2mS6qAYDJD+RXXvrKWzvKuBRlKbk8muC3xFZruDZJL+Qu3VcPT71WLMVKZIpILM6dFB6rswCYs2/AyKwCMFJn9uVwP9EpjGMlioyL7t1gjkKn0XWOPBP5wqGBCZftkKVMyHVhm61Ptf9fmaN2YpDZ2a45Oe22V/IF9vw=="
    network {
        bridge = "vmbr0"
        model  = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "scsi"
        size = "40G"
        ssd = "1"
        discard = "on"
    }
    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.16.85/24,gw=172.16.16.1"
}
