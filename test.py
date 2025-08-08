import torch
T = torch.stack(
            [
                torch.tensor(0., device='cuda:0'),
                torch.tensor(0.9686, device='cuda:0'),
                torch.tensor(0.9686, device='cuda:0'),
                torch.tensor(0., device='cuda:0')
            ],
            dim=-1,
        )
print(T)